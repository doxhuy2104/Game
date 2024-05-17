package main;

import entity.Entity;

public class CollisionChecker {
    GamePanel gp;

    public CollisionChecker(GamePanel gp) {
        this.gp = gp;
    }

    public void checkTile(Entity entity) {
        int entityLeft = entity.x + entity.solidArea.x;
        int entityRight = entityLeft + entity.solidArea.width;
        int entityTop = entity.y + entity.solidArea.y;
        int entityBottom = entityTop + entity.solidArea.height;

        int entityLeftCol = entityLeft / gp.tileSize;
        int entityRightCol = entityRight / gp.tileSize;
        int entityTopRow = entityTop / gp.tileSize;
        int entityBotRow = entityBottom / gp.tileSize;

        int tileNum1, tileNum2, tileNum3;

        switch (entity.collisionCheck) {
            case "up":
                entityTopRow = (entityTop - entity.speed) / gp.tileSize;
                tileNum1 = gp.tileManager.mapTileNum[entityLeftCol][entityTopRow];
                tileNum2 = gp.tileManager.mapTileNum[entityRightCol][entityTopRow];
                if (gp.tileManager.tile[tileNum1].collision || gp.tileManager.tile[tileNum2].collision) {
                    entity.collisionOn = true;
                }
                break;
            case "upr":
                entityTopRow = (entityTop - entity.speed) / gp.tileSize;
                entityRightCol = (entityRight + entity.speed) / gp.tileSize;
                tileNum1 = gp.tileManager.mapTileNum[entityLeftCol][entityTopRow];
                tileNum2 = gp.tileManager.mapTileNum[entityRightCol][entityTopRow];
                tileNum3 = gp.tileManager.mapTileNum[entityRightCol][entityBotRow];
                if (gp.tileManager.tile[tileNum1].collision || gp.tileManager.tile[tileNum2].collision) {
                    if (gp.tileManager.tile[tileNum3].collision)
                        entity.collisionR = true;
                }
                if (gp.tileManager.tile[tileNum2].collision || gp.tileManager.tile[tileNum3].collision) {
                    if (gp.tileManager.tile[tileNum1].collision)
                        entity.collisionU = true;
                }
                break;

            case "upl":
                entityTopRow = (entityTop - entity.speed) / gp.tileSize;
                entityLeftCol = (entityLeft - entity.speed) / gp.tileSize;
                tileNum1 = gp.tileManager.mapTileNum[entityLeftCol][entityTopRow];
                tileNum2 = gp.tileManager.mapTileNum[entityRightCol][entityTopRow];
                tileNum3 = gp.tileManager.mapTileNum[entityLeftCol][entityBotRow];
                if (gp.tileManager.tile[tileNum1].collision || gp.tileManager.tile[tileNum2].collision) {
                    if (gp.tileManager.tile[tileNum3].collision)
                        entity.collisionL = true;
                }
                if (gp.tileManager.tile[tileNum1].collision || gp.tileManager.tile[tileNum3].collision) {
                    if (gp.tileManager.tile[tileNum2].collision)
                        entity.collisionU = true;
                }
                break;
            case "down":
                entityBotRow = (entityBottom + entity.speed) / gp.tileSize;
                tileNum1 = gp.tileManager.mapTileNum[entityLeftCol][entityBotRow];
                tileNum2 = gp.tileManager.mapTileNum[entityRightCol][entityBotRow];
                if (gp.tileManager.tile[tileNum1].collision || gp.tileManager.tile[tileNum2].collision) {
                    entity.collisionOn = true;
                }
                break;
            case "downr":
                entityBotRow = (entityBottom + entity.speed) / gp.tileSize;
                entityRightCol = (entityRight + entity.speed) / gp.tileSize;
                tileNum1 = gp.tileManager.mapTileNum[entityLeftCol][entityBotRow];
                tileNum2 = gp.tileManager.mapTileNum[entityRightCol][entityBotRow];
                tileNum3 = gp.tileManager.mapTileNum[entityRightCol][entityTopRow];
                if (gp.tileManager.tile[tileNum1].collision || gp.tileManager.tile[tileNum2].collision) {
                    if (gp.tileManager.tile[tileNum3].collision)
                        entity.collisionR = true;
                }
                if (gp.tileManager.tile[tileNum2].collision || gp.tileManager.tile[tileNum3].collision) {
                    if (gp.tileManager.tile[tileNum1].collision)
                        entity.collisionD = true;
                }
                break;
            case "downl":
                entityBotRow = (entityBottom + entity.speed) / gp.tileSize;
                entityLeftCol = (entityLeft - entity.speed) / gp.tileSize;
                tileNum1 = gp.tileManager.mapTileNum[entityLeftCol][entityBotRow];
                tileNum2 = gp.tileManager.mapTileNum[entityRightCol][entityBotRow];
                tileNum3 = gp.tileManager.mapTileNum[entityLeftCol][entityTopRow];
                if (gp.tileManager.tile[tileNum1].collision || gp.tileManager.tile[tileNum2].collision) {
                    if (gp.tileManager.tile[tileNum3].collision)
                        entity.collisionL = true;
                }
                if (gp.tileManager.tile[tileNum1].collision || gp.tileManager.tile[tileNum3].collision) {
                    if (gp.tileManager.tile[tileNum2].collision)
                        entity.collisionD = true;
                }
                break;
            case "left":
                entityLeftCol = (entityLeft - entity.speed) / gp.tileSize;
                tileNum1 = gp.tileManager.mapTileNum[entityLeftCol][entityTopRow];
                tileNum2 = gp.tileManager.mapTileNum[entityLeftCol][entityBotRow];
                if (gp.tileManager.tile[tileNum1].collision || gp.tileManager.tile[tileNum2].collision) {
                    entity.collisionOn = true;
                }
                break;
            case "right":
                entityRightCol = (entityRight + entity.speed) / gp.tileSize;
                tileNum1 = gp.tileManager.mapTileNum[entityRightCol][entityTopRow];
                tileNum2 = gp.tileManager.mapTileNum[entityRightCol][entityBotRow];
                if (gp.tileManager.tile[tileNum1].collision || gp.tileManager.tile[tileNum2].collision) {
                    entity.collisionOn = true;
                }
                break;
        }
    }
    public int checkObject( Entity entity, boolean player){
        int index = 999;
        for(int i = 0; i< gp.obj.length; i++){
            if(gp.obj[i] != null){
                //vị trí vùng rắn entity
                entity.solidArea.x = entity.x + entity.solidArea.x;
                entity.solidArea.y = entity.y + entity.solidArea.y;
                //vị trí vùng rắn object
                gp.obj[i].solidArea.x = gp.obj[i].worldX + gp.obj[i].solidArea.x;
                gp.obj[i].solidArea.y = gp.obj[i].worldY + gp.obj[i].solidArea.y;

                switch(entity.direction){
                    case "up":
                        entity.solidArea.y -= entity.speed;
                        if(entity.solidArea.intersects(gp.obj[i].solidArea)) {
                            if (gp.obj[i].collision) {
                                entity.collisionOn = true;
                            }
                            if (player) index = i;
                        }
                        break;
                    case "upr":
                        entity.solidArea.y -= entity.speed;
                        entity.solidArea.x += entity.speed;
                        if(entity.solidArea.intersects(gp.obj[i].solidArea)) {
                            if (gp.obj[i].collision) {
                                entity.collisionOn = true;
                            }
                            if (player) index = i;
                        }
                        break;
                    case "upl":
                        entity.solidArea.y -= entity.speed;
                        entity.solidArea.x -= entity.speed;
                      if(entity.solidArea.intersects(gp.obj[i].solidArea)) {
                            if (gp.obj[i].collision) {
                                entity.collisionOn = true;
                            }
                            if (player) index = i;
                      }
                        break;
                    case "down":
                        entity.solidArea.y += entity.speed;
                        if(entity.solidArea.intersects(gp.obj[i].solidArea)) {
                            if (gp.obj[i].collision) {
                                entity.collisionOn = true;
                            }
                            if (player) index = i;
                        }
                        break;
                    case "downr":
                        entity.solidArea.y += entity.speed;
                        entity.solidArea.x += entity.speed;
                        if(entity.solidArea.intersects(gp.obj[i].solidArea)) {
                            if (gp.obj[i].collision) {
                                entity.collisionOn = true;
                            }
                            if (player) index = i;
                        }
                        break;
                    case "downl":
                        entity.solidArea.y += entity.speed;
                        entity.solidArea.x -= entity.speed;
                        if(entity.solidArea.intersects(gp.obj[i].solidArea)) {
                            if (gp.obj[i].collision) {
                                entity.collisionOn = true;
                            }
                            if (player) index = i;
                        }
                        break;
                    case "left":
                        entity.solidArea.x -= entity.speed;
                        if(entity.solidArea.intersects(gp.obj[i].solidArea)) {
                            if (gp.obj[i].collision) {
                                entity.collisionOn = true;
                            }
                            if (player) index = i;
                        }
                        break;
                    case "right":
                        entity.solidArea.x += entity.speed;
                        if(entity.solidArea.intersects(gp.obj[i].solidArea)) {
                            if (gp.obj[i].collision) {
                                entity.collisionOn = true;
                            }
                            if (player) index = i;
                        }
                        break;

                }
                entity.solidArea.x = entity.solidAreaDefaultX;
                entity.solidArea.y = entity.solidAreaDefaultY;
                gp.obj[i].solidArea.x = gp.obj[i].solidAreaDefaultX;
                gp.obj[i].solidArea.y = gp.obj[i].solidAreaDefaultY;
            }
        }
        return index;
    }

    public int checkNpc( Entity entity, Entity[] npc){
        int index = 999;
        for(int i = 0; i< gp.obj.length; i++){
            if(gp.npc[i] != null){
                //vị trí vùng rắn entity
                entity.solidArea.x = entity.x + entity.solidArea.x;
                entity.solidArea.y = entity.y + entity.solidArea.y;
                //vị trí vùng rắn object
                gp.npc[i].solidArea.x = gp.npc[i].worldX + gp.npc[i].solidArea.x;
                gp.npc[i].solidArea.y = gp.npc[i].worldY + gp.npc[i].solidArea.y;

                switch(entity.direction){
                    case "up":
                        entity.solidArea.y -= entity.speed;
                        if(entity.solidArea.intersects(gp.npc[i].solidArea)) {
                            entity.collisionOn = true;
                            index = i;
                        }
                        break;
                    case "upr":
                        entity.solidArea.y -= entity.speed;
                        entity.solidArea.x += entity.speed;
                        if(entity.solidArea.intersects(gp.npc[i].solidArea)) {
                            entity.collisionOn = true;
                            index = i;
                        }
                        break;
                    case "upl":
                        entity.solidArea.y -= entity.speed;
                        entity.solidArea.x -= entity.speed;
                        if(entity.solidArea.intersects(gp.npc[i].solidArea)) {
                            entity.collisionOn = true;
                            index = i;
                        }
                        break;
                    case "down":
                        entity.solidArea.y += entity.speed;
                        if(entity.solidArea.intersects(gp.npc[i].solidArea)) {
                            entity.collisionOn = true;
                            index = i;
                        }
                        break;
                    case "downr":
                        entity.solidArea.y += entity.speed;
                        entity.solidArea.x += entity.speed;
                        if(entity.solidArea.intersects(gp.npc[i].solidArea)) {
                            entity.collisionOn = true;
                            index = i;
                        }
                        break;
                    case "downl":
                        entity.solidArea.y += entity.speed;
                        entity.solidArea.x -= entity.speed;
                        if(entity.solidArea.intersects(gp.npc[i].solidArea)) {
                            entity.collisionOn = true;
                            index = i;
                        }
                        break;
                    case "left":
                        entity.solidArea.x -= entity.speed;
                        if(entity.solidArea.intersects(gp.npc[i].solidArea)) {
                            entity.collisionOn = true;
                            index = i;
                        }
                        break;
                    case "right":
                        entity.solidArea.x += entity.speed;
                        if(entity.solidArea.intersects(gp.npc[i].solidArea)) {
                            entity.collisionOn = true;
                            index = i;
                        }
                        break;

                }
                entity.solidArea.x = entity.solidAreaDefaultX;
                entity.solidArea.y = entity.solidAreaDefaultY;
                gp.npc[i].solidArea.x = gp.npc[i].solidAreaDefaultX;
                gp.npc[i].solidArea.y = gp.npc[i].solidAreaDefaultY;
            }
        }
        return index;
    }

    public void checkTileEnemies(Entity entity) {
        int enemieLeft = entity.bodyAreaC.x;
        int enemieRight = enemieLeft + entity.bodyAreaC.width;
        int enemieTop = entity.bodyAreaC.y;
        int enemieBottom = enemieTop + entity.bodyAreaC.height;

        int enemieLeftCol = enemieLeft / gp.tileSize;
        int enemieRightCol = enemieRight / gp.tileSize;
        int enemieTopRow = enemieTop / gp.tileSize;
        int enemieBotRow = enemieBottom / gp.tileSize;

        int up,down,left,right;

        int tileNum1, tileNum2, tileNum3;

        switch (entity.mD) {
            case "U":
                enemieTopRow = (enemieTop + ((int)entity.yMove-1)) / gp.tileSize;
                tileNum1 = gp.tileManager.mapTileNum[enemieLeftCol][enemieTopRow];
                tileNum2 = gp.tileManager.mapTileNum[enemieRightCol][enemieTopRow];
                if (gp.tileManager.tile[tileNum1].collision || gp.tileManager.tile[tileNum2].collision) {
                    entity.eCollision = true;
                    up=(enemieTopRow+1)*gp.tileSize-enemieTop;
                    entity.yMove=up;
                }
                break;
            case "RU":
                enemieTopRow = (enemieTop + ((int)entity.yMove-1)) / gp.tileSize;
                enemieRightCol = (enemieRight + ((int)entity.xMove+1)) / gp.tileSize;
                tileNum1 = gp.tileManager.mapTileNum[enemieLeftCol][enemieTopRow];
                tileNum2 = gp.tileManager.mapTileNum[enemieRightCol][enemieTopRow];
                tileNum3 = gp.tileManager.mapTileNum[enemieRightCol][enemieBotRow];
                if (gp.tileManager.tile[tileNum1].collision || gp.tileManager.tile[tileNum2].collision) {
                    if (gp.tileManager.tile[tileNum3].collision)
                    {
                        entity.eCollisionR = true;
                        right=enemieRightCol*gp.tileSize-enemieRight;
                        entity.xMove=right;
                    }

                }
                if (gp.tileManager.tile[tileNum2].collision || gp.tileManager.tile[tileNum3].collision) {
                    if (gp.tileManager.tile[tileNum1].collision)
                    {
                        entity.eCollisionU = true;
                        up=(enemieTopRow+1)*gp.tileSize-enemieTop;
                        entity.yMove=up;
                    }
                }
                break;
            case "LU":
                enemieTopRow = (enemieTop + ((int)entity.yMove-1)) / gp.tileSize;
                enemieLeftCol = (enemieLeft + ((int)entity.xMove-1)) / gp.tileSize;
                tileNum1 = gp.tileManager.mapTileNum[enemieLeftCol][enemieTopRow];
                tileNum2 = gp.tileManager.mapTileNum[enemieRightCol][enemieTopRow];
                tileNum3 = gp.tileManager.mapTileNum[enemieLeftCol][enemieBotRow];
                if (gp.tileManager.tile[tileNum1].collision || gp.tileManager.tile[tileNum2].collision) {
                    if (gp.tileManager.tile[tileNum3].collision)
                    {
                        entity.eCollisionL = true;
                        left=(enemieLeftCol+1)*gp.tileSize-enemieLeft;
                        entity.xMove=left;
                        System.out.println(enemieLeft+" "+(enemieLeftCol+1)*gp.tileSize);
                    }
                }
                if (gp.tileManager.tile[tileNum1].collision || gp.tileManager.tile[tileNum3].collision) {
                    if (gp.tileManager.tile[tileNum2].collision)
                    {
                        entity.eCollisionU = true;
                        up=(enemieTopRow+1)*gp.tileSize-enemieTop;
                        entity.yMove=up;
                    }
                }
                break;
            case "D":
                enemieBotRow = (enemieBottom + ((int)entity.yMove+1)) / gp.tileSize;
                tileNum1 = gp.tileManager.mapTileNum[enemieLeftCol][enemieBotRow];
                tileNum2 = gp.tileManager.mapTileNum[enemieRightCol][enemieBotRow];
                if (gp.tileManager.tile[tileNum1].collision || gp.tileManager.tile[tileNum2].collision) {
                    entity.eCollision = true;
                    down=enemieBotRow*gp.tileSize-enemieBottom;
                    entity.yMove=down;
                }
                break;
            case "RD":
                enemieBotRow = (enemieBottom + ((int)entity.yMove+1)) / gp.tileSize;
                enemieRightCol = (enemieRight + ((int)entity.xMove+1)) / gp.tileSize;
                tileNum1 = gp.tileManager.mapTileNum[enemieLeftCol][enemieBotRow];
                tileNum2 = gp.tileManager.mapTileNum[enemieRightCol][enemieBotRow];
                tileNum3 = gp.tileManager.mapTileNum[enemieRightCol][enemieTopRow];
                if (gp.tileManager.tile[tileNum1].collision || gp.tileManager.tile[tileNum2].collision) {
                    if (gp.tileManager.tile[tileNum3].collision)
                    {
                        entity.eCollisionR = true;
                        right=enemieRightCol*gp.tileSize-enemieRight;
                        entity.xMove=right;
                    }
                }
                if (gp.tileManager.tile[tileNum2].collision || gp.tileManager.tile[tileNum3].collision) {
                    if (gp.tileManager.tile[tileNum1].collision)
                    {
                        entity.eCollisionD = true;
                        down=enemieBotRow*gp.tileSize-enemieBottom;
                        entity.yMove=down;
                    }
                }
                break;
            case "LD":
                enemieBotRow = (enemieBottom + ((int)entity.yMove+1)) / gp.tileSize;
                enemieLeftCol = (enemieLeft + ((int)entity.xMove-1)) / gp.tileSize;
                tileNum1 = gp.tileManager.mapTileNum[enemieLeftCol][enemieBotRow];
                tileNum2 = gp.tileManager.mapTileNum[enemieRightCol][enemieBotRow];
                tileNum3 = gp.tileManager.mapTileNum[enemieLeftCol][enemieTopRow];
                if (gp.tileManager.tile[tileNum1].collision || gp.tileManager.tile[tileNum2].collision) {
                    if (gp.tileManager.tile[tileNum3].collision)
                    {
                        entity.eCollisionL = true;
                        left=(enemieLeftCol+1)*gp.tileSize-enemieLeft;
                        entity.xMove=left;
                    }
                }
                if (gp.tileManager.tile[tileNum1].collision || gp.tileManager.tile[tileNum3].collision) {
                    if (gp.tileManager.tile[tileNum2].collision)
                    {
                        entity.eCollisionD = true;
                        down=enemieBotRow*gp.tileSize-enemieBottom;
                        entity.yMove=down;
                    }
                }
                break;
            case "L":
                enemieLeftCol = (enemieLeft + ((int)entity.xMove-1)) / gp.tileSize;
                tileNum1 = gp.tileManager.mapTileNum[enemieLeftCol][enemieTopRow];
                tileNum2 = gp.tileManager.mapTileNum[enemieLeftCol][enemieBotRow];
                if (gp.tileManager.tile[tileNum1].collision || gp.tileManager.tile[tileNum2].collision) {
                    entity.eCollision = true;
                    left=(enemieLeftCol+1)*gp.tileSize-enemieLeft;
                    entity.xMove=left;
                }
                break;
            case "R":
                enemieRightCol = (enemieRight + ((int)entity.xMove+1)) / gp.tileSize;
                tileNum1 = gp.tileManager.mapTileNum[enemieRightCol][enemieTopRow];
                tileNum2 = gp.tileManager.mapTileNum[enemieRightCol][enemieBotRow];
                if (gp.tileManager.tile[tileNum1].collision || gp.tileManager.tile[tileNum2].collision) {
                    entity.eCollision = true;
                    right=enemieRightCol*gp.tileSize-enemieRight;
                    entity.xMove=right;
                }
                break;
        }
    }

    public void pToECo(Entity entity) {
        int playerTop = entity.screenY + 32;
        int playerBot = playerTop + entity.solidArea.height;
        int playerLeft = entity.screenX + 8;
        int playerRight = playerLeft + entity.solidArea.width;

        int enemieTop[] = new int[gp.slime.length];
        int enemieBot[] = new int[gp.slime.length];
        int enemieRight[] = new int[gp.slime.length];
        int enemieLeft[] = new int[gp.slime.length];

        for (int i = 0; i < gp.slime.length; i++) {
            if (gp.slime[i] != null) {
                enemieTop[i] = gp.slime[i].bodyAreaA.y;
                enemieBot[i] = enemieTop[i] + gp.slime[i].bodyAreaA.height;
                enemieLeft[i] = gp.slime[i].bodyAreaA.x;
                enemieRight[i] = enemieLeft[i] + gp.slime[i].bodyAreaA.width;
                if (gp.slime[i].alive) {
                    boolean up=playerTop <= enemieBot[i] && playerTop >= enemieBot[i] && playerLeft <= enemieRight[i] && playerRight >= enemieLeft[i];
                    boolean down=playerBot >= enemieTop[i] && playerBot <= enemieBot[i] & playerLeft <= enemieRight[i] && playerRight >= enemieLeft[i];
                    boolean left= playerLeft <= enemieRight[i] && playerLeft >= enemieLeft[i] && playerBot >= enemieTop[i] && playerTop <= enemieBot[i];
                    boolean right = playerRight >= enemieLeft[i] && playerRight <= enemieRight[i] && playerBot >= enemieTop[i] && playerTop <= enemieBot[i];
                    switch (entity.collisionCheck) {
                        case "up":
                            if (up) {
                                entity.pToECU = true;
                            }
                            break;
                        case "down":
                            if (down) {
                                entity.pToECD = true;
                            }
                            break;
                        case "left":
                            if (left) {
                                entity.pToECL = true;
                            }
                            break;
                        case "right":
                            if (right) {
                                entity.pToECR = true;
                            }
                            break;
                        case "upr":
                            if (up) {
                                entity.pToECU = true;
                            }
                            if (right) {
                                entity.pToECR = true;
                            }
                            break;
                        case "upl":
                            if (left) {
                                entity.pToECL = true;
                            }
                            if (up) {
                                entity.pToECU = true;
                            }
                            break;
                        case "downr":
                            if (right) {
                                entity.pToECR = true;
                            }
                            if (down) {
                                entity.pToECD = true;
                            }
                            break;
                        case "downl":
                            if (down) {
                                entity.pToECD = true;
                            }
                            if (left) {
                                entity.pToECL = true;
                            }
                            break;
                    }
                }
            }
        }
    }

    public void eToPCo(Entity enemies) {

        int playerTop = enemies.screenY + 32;
        int playerBot = playerTop + gp.player.solidArea.height;
        int playerLeft = enemies.screenX + 8;
        int playerRight = playerLeft + gp.player.solidArea.width;

        int enemieTop = enemies.bodyAreaA.y;
        int enemieBot = enemieTop + enemies.bodyAreaA.height;
        int enemieLeft = enemies.bodyAreaA.x;
        int enemieRight = enemieLeft + enemies.bodyAreaA.width;

        switch (enemies.mD) {
            case "U":
                if (enemieTop <= playerBot && enemieTop >= playerTop && enemieLeft <= playerRight && enemieRight >= playerLeft) {
                    enemies.eToPCU = true;
                }
                break;
            case "D":
                if (enemieBot >= playerTop && enemieBot <= playerTop && enemieLeft <= playerRight && enemieRight >= playerLeft) {
                    enemies.eToPCD = true;
                }
                break;
            case "L":
                if (enemieLeft <= playerRight && enemieLeft >= playerLeft && enemieBot >= playerTop && enemieTop <= playerBot) {
                    enemies.eToPCL = true;
                }
                break;
            case "R":
                if (enemieRight  >= playerLeft && enemieRight <= playerRight && enemieBot >= playerTop && enemieTop <= playerBot) {
                    enemies.eToPCR = true;
                }
                break;
            case "LU":
                if (enemieLeft  <= playerRight && enemieLeft >= playerLeft && enemieBot >= playerTop && enemieTop <= playerBot) {
                    enemies.eToPCL = true;
                }
                if (enemieTop <= playerBot && enemieTop >= playerTop && enemieLeft <= playerRight && enemieRight >= playerLeft) {
                    enemies.eToPCU = true;
                }
                break;
            case "LD":
                if (enemieLeft<= playerRight && enemieLeft >= playerLeft && enemieBot >= playerTop && enemieTop <= playerBot) {
                    enemies.eToPCL = true;
                }

                if (enemieBot >= playerTop && enemieBot <= playerTop && enemieLeft <= playerRight && enemieRight >= playerLeft) {
                    enemies.eToPCD = true;
                }
                break;
            case "RU":
                if (enemieTop  <= playerBot && enemieTop >= playerTop && enemieLeft <= playerRight && enemieRight >= playerLeft) {
                    enemies.eToPCU = true;
                }
                if (enemieRight  >= playerLeft && enemieRight <= playerRight && enemieBot >= playerTop && enemieTop <= playerBot) {
                    enemies.eToPCR = true;
                }
                break;
            case "RD":
                if (enemieRight  >= playerLeft && enemieRight <= playerRight && enemieBot >= playerTop && enemieTop <= playerBot) {
                    enemies.eToPCR = true;
                }
                if (enemieBot >= playerTop && enemieBot <= playerTop && enemieLeft <= playerRight && enemieRight >= playerLeft) {
                    enemies.eToPCD = true;
                }

                break;
        }
    }
}


