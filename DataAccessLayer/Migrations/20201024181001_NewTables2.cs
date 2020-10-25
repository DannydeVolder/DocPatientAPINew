using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace DataAccessLayer.Migrations
{
    public partial class NewTables2 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Users_MedicalFiles_MedicalFileId",
                table: "Users");

            migrationBuilder.DropIndex(
                name: "IX_Users_MedicalFileId",
                table: "Users");

            migrationBuilder.DropColumn(
                name: "MedicalFileId",
                table: "Users");

            migrationBuilder.AddColumn<Guid>(
                name: "PatientId",
                table: "MedicalFiles",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "DiagnosisInformation",
                table: "Diagnosis",
                nullable: true);

            migrationBuilder.CreateIndex(
                name: "IX_MedicalFiles_PatientId",
                table: "MedicalFiles",
                column: "PatientId",
                unique: true,
                filter: "[PatientId] IS NOT NULL");

            migrationBuilder.AddForeignKey(
                name: "FK_MedicalFiles_Users_PatientId",
                table: "MedicalFiles",
                column: "PatientId",
                principalTable: "Users",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_MedicalFiles_Users_PatientId",
                table: "MedicalFiles");

            migrationBuilder.DropIndex(
                name: "IX_MedicalFiles_PatientId",
                table: "MedicalFiles");

            migrationBuilder.DropColumn(
                name: "PatientId",
                table: "MedicalFiles");

            migrationBuilder.DropColumn(
                name: "DiagnosisInformation",
                table: "Diagnosis");

            migrationBuilder.AddColumn<Guid>(
                name: "MedicalFileId",
                table: "Users",
                type: "uniqueidentifier",
                nullable: true);

            migrationBuilder.CreateIndex(
                name: "IX_Users_MedicalFileId",
                table: "Users",
                column: "MedicalFileId");

            migrationBuilder.AddForeignKey(
                name: "FK_Users_MedicalFiles_MedicalFileId",
                table: "Users",
                column: "MedicalFileId",
                principalTable: "MedicalFiles",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);
        }
    }
}
