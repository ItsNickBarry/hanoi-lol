HAI 1.2
  CAN HAS STDIO?

  I HAS A MOVEZ

  I HAS A TOWERLEFT ITZ "SMALLMEDIUMBIG"
  I HAS A TOWERMIDDLE ITZ "EMPTY"
  I HAS A TOWERRIGHT ITZ "EMPTY"

  HOW IZ I PRINTIN YR TOWERLEFT AN YR TOWERMIDDLE AN YR TOWERRIGHT
    VISIBLE "======================"
    VISIBLE SMOOSH "LEFT:   " AN TOWERLEFT MKAY
    VISIBLE SMOOSH "MIDDLE: " AN TOWERMIDDLE MKAY
    VISIBLE SMOOSH "RIGHT:  " AN TOWERRIGHT MKAY
    VISIBLE "======================"
  IF U SAY SO

  HOW IZ I WINNIN YR TOWERMIDDLE AN YR TOWERRIGHT
    BOTH SAEM TOWERMIDDLE AN "SMALLMEDIUMBIG"
    O RLY?
      YA RLY
        FOUND YR WIN
      NO WAI
        BOTH SAEM TOWERRIGHT AN "SMALLMEDIUMBIG"
        O RLY?
          YA RLY
            FOUND YR WIN
          NO WAI
            FOUND YR FAIL
        OIC
    OIC
  IF U SAY SO

  HOW IZ I GOODTOWER YR TOWERNAME
    I HAS A LEFT ITZ BOTH SAEM FROM AN "LEFT"
    I HAS A MIDDLE ITZ BOTH SAEM FROM AN "MIDDLE"
    I HAS A RIGHT ITZ BOTH SAEM FROM AN "RIGHT"

    ANY OF LEFT AN MIDDLE AN RIGHT MKAY
    O RLY?
      YA RLY
        FOUND YR WIN
      NO WAI
        VISIBLE "BAD TOWER!!"
        FOUND YR FAIL
    OIC
  IF U SAY SO

  HOW IZ I WATSONTOP YR TOWER
    VISIBLE "IN watsontop: "
    VISIBLE TOWER
    TOWER, WTF?
      OMG "SMALLMEDIUMBIG"
        FOUND YR "SMALL"
        GTFO
      OMG "MEDIUMBIG"
        FOUND YR "MEDIUM"
        GTFO
      OMG "SMALLBIG"
        FOUND YR "SMALL"
        GTFO
      OMG "SMALLMEDIUM"
        FOUND YR "SMALL"
        GTFO
      OMG "SMALL"
        FOUND YR "SMALL"
        GTFO
      OMG "MEDIUM"
        FOUND YR "MEDIUM"
        GTFO
      OMG "BIG"
        FOUND YR "BIG"
        GTFO
      OMG "EMPTY"
        FOUND YR "EMPTY"
    OIC
  IF U SAY SO

  HOW IZ I CANMOVE YR FROMTOP AN YR TOTOP
    I HAS A FROMVALUE
    I HAS A TOVALUE

    FROMTOP, WTF?
      OMG "EMPTY"
        FROMVALUE R 4
        GTFO
      OMG "SMALL"
        FROMVALUE R 1
        GTFO
      OMG "MEDIUM"
        FROMVALUE R 2
        GTFO
      OMG "BIG"
        FROMVALUE R 3
        GTFO
    OIC
    TOTOP, WTF?
      OMG "EMPTY"
        TOVALUE R 4
        GTFO
      OMG "SMALL"
        TOVALUE R 1
        GTFO
      OMG "MEDIUM"
        TOVALUE R 2
        GTFO
      OMG "BIG"
        TOVALUE R 3
        GTFO
    OIC

    FOUND YR DIFFRINT FROMVALUE AN BIGGR OF FROMVALUE AN TOVALUE
  IF U SAY SO

  HOW IZ I TOWERTHAR YR TOWER
    BOTH SAEM TOWER AN "EMPTY"
    O RLY?
      YA RLY
        FOUND YR FAIL
      NO WAI
        FOUND YR WIN
    OIC
  IF U SAY SO

  OBTW
    The main game loop.
  


    Very fun.
  TLDR

  IM IN YR LOOP UPPIN YR MOVES TIL I IZ WINNIN YR TOWERMIDDLE AN YR TOWERRIGHT MKAY
    VISIBLE SMOOSH "YOU MOVED " AN MOVES MKAY
    I IZ PRINTIN YR TOWERLEFT AN YR TOWERMIDDLE AN YR TOWERRIGHT MKAY
    I HAS A FROM
    I HAS A FROMCOMMAND
    I HAS A FROMTOP
    I HAS A TO
    I HAS A TOCOMMAND
    I HAS A TOTOP
    I HAS A BIGPROBLEM ITZ FAIL
    IM IN YR LOOP  BTW beginning of master loop to get "from" and "to"
      IM IN YR LOOP  BTW beginning of loop to get "from"
        IM IN YR LOOP
          I HAS A PROBLEM ITZ FAIL
          VISIBLE "GIMMEH WARE TO MOVE FROM"
          GIMMEH FROMCOMMAND
          FROMCOMMAND, WTF?
            OMG "LEFT"
              FROM R TOWERLEFT
              GTFO
            OMG "MIDDLE"
              FROM R TOWERMIDDLE
              GTFO
            OMG "RIGHT"
              FROM R TOWERRIGHT
              GTFO
            OMGWTF
              PROBLEM R WIN
          OIC

          PROBLEM
          O RLY?
            YA RLY
              VISIBLE "BAD NAME TOWER!  AGAIN!!"
            NO WAI
              GTFO
          OIC
        IM OUTTA YR LOOP

        I IZ TOWERTHAR YR FROM MKAY
        O RLY?
          YA RLY
            GTFO
          NO WAI
            VISIBLE "NO TOWER THAR!!"
        OIC

      IM OUTTA YR LOOP  BTW end of loop to get "from"
      IM IN YR LOOP  BTW beginning of loop to get "to"
        IM IN YR LOOP
          I HAS A NOTHERPROBLEM
          VISIBLE "GIMMEH WARE TO MOVE TO"
          GIMMEH TOCOMMAND
          TOCOMMAND, WTF?
            OMG "LEFT"
              TO R TOWERLEFT
              GTFO
            OMG "MIDDLE"
              TO R TOWERMIDDLE
              GTFO
            OMG "RIGHT"
              TO R TOWERRIGHT
              GTFO
            OMGWTF
              NOTHERPROBLEM R WIN
          OIC

          NOTHERPROBLEM
          O RLY?
            YA RLY
              VISIBLE "BAD NAME TOWER!  AGAIN!!"
            NO WAI
              GTFO
          OIC
        IM OUTTA YR LOOP

        FROMTOP R I IZ WATSONTOP YR FROM MKAY
        TOTOP R I IZ WATSONTOP YR TO MKAY

        I IZ CANMOVE YR FROMTOP AN YR TOTOP MKAY
        O RLY?
          YA RLY
            GTFO
          NO WAI
            BIGPROBLEM R WIN
            GTFO
        OIC


      IM OUTTA YR LOOP  BTW end of loop to get "to"

      BIGPROBLEM
      O RLY?
        YA RLY
          VISIBLE "BAD MOVING!!1"  BTW Too heavy
          BIGPROBLEM R FAIL
        NO WAI
          GTFO
      OIC

    IM OUTTA YR LOOP  BTW end of master loop to get "from" and "to"

    I HAS A NEWTO
    I HAS A NEWFROM
    BOTH SAEM TO AN "EMPTY"
    O RLY?
      YA RLY
        NEWTO R FROMTOP
      NO WAI
        NEWTO R SMOOSH FROMTOP AN TO MKAY
    OIC

    FROM, WTF?
      OMG "SMALLMEDIUMBIG"
        NEWFROM R "MEDIUMBIG"
        GTFO
      OMG "MEDIUMBIG"
        NEWFROM R "BIG"
        GTFO
      OMG "SMALLBIG"
        NEWFROM R "BIG"
        GTFO
      OMG "SMALLMEDIUM"
        NEWFROM R "MEDIUM"
        GTFO
      OMG "SMALL"
        NEWFROM R "EMPTY"
        GTFO
      OMG "MEDIUM"
        NEWFROM R "EMPTY"
        GTFO
      OMG "BIG"
        NEWFROM R "EMPTY"
        GTFO
      OMG "EMPTY"
        GTFO  BTW this shouldn't happen
    OIC

    FROMCOMMAND, WTF?
      OMG "LEFT"
        TOWERLEFT R NEWFROM
        GTFO
      OMG "MIDDLE"
        TOWERMIDDLE R NEWFROM
        GTFO
      OMG "RIGHT"
        TOWERRIGHT R NEWFROM
        GTFO
    OIC

    TOCOMMAND, WTF?
      OMG "LEFT"
        TOWERLEFT R NEWTO
        GTFO
      OMG "MIDDLE"
        TOWERMIDDLE R NEWTO
        GTFO
      OMG "RIGHT"
        TOWERRIGHT R NEWTO
        GTFO
    OIC

    MOVEZ R MOVES
  IM OUTTA YR LOOP  BTW end of main loop

  I IZ PRINTIN YR TOWERLEFT AN YR TOWERMIDDLE AN YR TOWERRIGHT MKAY
  VISIBLE SMOOSH "YOU MOVED " AN SUM OF MOVEZ AN 1 MKAY
  VISIBLE "WIN!"

KTHXBYE
