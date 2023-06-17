-- CreateTable
CREATE TABLE "Student" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "image" TEXT,
    "hashed_password" TEXT NOT NULL,

    CONSTRAINT "Student_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Mentor" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "image" TEXT,
    "hashed_password" TEXT NOT NULL,
    "language" TEXT NOT NULL,
    "ig_url" TEXT NOT NULL,
    "fb_url" TEXT NOT NULL,
    "line_id" TEXT NOT NULL,

    CONSTRAINT "Mentor_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Permission" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "role_id" INTEGER NOT NULL,

    CONSTRAINT "Permission_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Role" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "student_id" INTEGER NOT NULL,
    "mentor_id" INTEGER NOT NULL,

    CONSTRAINT "Role_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Section" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "image" TEXT NOT NULL,
    "apply_id" INTEGER NOT NULL,

    CONSTRAINT "Section_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Apply" (
    "student_id" INTEGER NOT NULL,
    "mentor_id" INTEGER NOT NULL,
    "id" SERIAL NOT NULL,

    CONSTRAINT "Apply_pkey" PRIMARY KEY ("student_id","mentor_id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Student_email_key" ON "Student"("email");

-- CreateIndex
CREATE UNIQUE INDEX "Mentor_email_key" ON "Mentor"("email");

-- CreateIndex
CREATE UNIQUE INDEX "Permission_role_id_key" ON "Permission"("role_id");

-- CreateIndex
CREATE UNIQUE INDEX "Role_student_id_key" ON "Role"("student_id");

-- CreateIndex
CREATE UNIQUE INDEX "Role_mentor_id_key" ON "Role"("mentor_id");

-- CreateIndex
CREATE UNIQUE INDEX "Section_apply_id_key" ON "Section"("apply_id");

-- CreateIndex
CREATE UNIQUE INDEX "Apply_id_key" ON "Apply"("id");

-- AddForeignKey
ALTER TABLE "Permission" ADD CONSTRAINT "Permission_role_id_fkey" FOREIGN KEY ("role_id") REFERENCES "Role"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Role" ADD CONSTRAINT "Role_student_id_fkey" FOREIGN KEY ("student_id") REFERENCES "Student"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Role" ADD CONSTRAINT "Role_mentor_id_fkey" FOREIGN KEY ("mentor_id") REFERENCES "Mentor"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Section" ADD CONSTRAINT "Section_apply_id_fkey" FOREIGN KEY ("apply_id") REFERENCES "Apply"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Apply" ADD CONSTRAINT "Apply_student_id_fkey" FOREIGN KEY ("student_id") REFERENCES "Student"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Apply" ADD CONSTRAINT "Apply_mentor_id_fkey" FOREIGN KEY ("mentor_id") REFERENCES "Mentor"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
