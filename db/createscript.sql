-- Step 1
-- ************************************************************************************************
-- Goal: Maak een nieuwe database aan met de naam Achtbaan
-- ************************************************************************************************
-- Versie        Datum          Auteur               Omschrijving
-- ********      ******         ******               *************
-- 01            13-11-2024     Koen Geijtenbeek     Achtbanen van Europa
-- ************************************************************************************************

-- Verwijder database Achtbaan
DROP DATABASE IF EXISTS Achtbaan;

-- Maak een nieuwe database aan met de naam Achtbaan
CREATE DATABASE Achtbaan;

-- Gebruik database Achtbaan
USE Achtbaan;



CREATE TABLE AchtbanenVanEuropa
(
    Id          SMALLINT         UNSIGNED    NOT NULL   AUTO_INCREMENT
    ,Naam       VARCHAR(50)                  NOT NULL
    ,Pretpark   VARCHAR(50)                  NOT NULL
    ,Land       VARCHAR(50)                  NOT NULL
    ,Snelheid   TINYINT          UNSIGNED    NOT NULL
    ,Hoogte     TINYINT          UNSIGNED    NOT NULL
    ,IsActive   BIT                          NOT NULL   DEFAULT 1
    ,Opmerking  VARCHAR(255)                     NULL   DEFAULT NULL
    ,Datum      DATETIME(6)                  NOT NULL
    ,EditDate   DATETIME(6)                  NOT NULL
    ,CONSTRAINT PK_AchtbanenVanEuropa_Id     PRIMARY KEY CLUSTERED(Id)
) ENGINE=InnoDB;