CONTAINER Onetcreator
{
    NAME Onetcreator;
    INCLUDE Obase;

    GROUP ID_OBJECTPROPERTIES {
        DEFAULT 1;
        LONG NETCREATOR_MODE {
            DEFAULT 0;
            CYCLE {
                NETCREATOR_MODE_A;
                NETCREATOR_MODE_B;
            };
            ANIM OFF;
        }
        LINK NETCREATOR_OBJECTA {
            ACCEPT { 
                Opolygon;
                1001381;
                1018544;
                1018545;
                1018791;
                1019268;
            }
        }
        LINK NETCREATOR_VERTEXMAPA {
            ACCEPT { 5682; }
        }
        LINK NETCREATOR_OBJECTB {
            ACCEPT {
                Opolygon;
                1001381;
                1018544;
                1018545;
                1018791;
                1019268;
                }
        }
        LINK NETCREATOR_VERTEXMAPB {
            ACCEPT { 5682; }
        }
    }
    GROUP ID_DISTANCE {
        DEFAULT 1;
        LONG NETCREATOR_SPACE {
            CYCLE {
                NETCREATOR_SPACE_LOCAL;
                NETCREATOR_SPACE_GLOBAL;
            }
            ANIM OFF;
        }
        LONG NETCREATOR_MINDISTANCE {
            MIN 0;
            MAX 1000;
            MINSLIDER 0;
            MAXSLIDER 1000;
            CUSTOMGUI LONGSLIDER;
        }
        LONG NETCREATOR_MAXDISTANCE {
            MIN 0;
            MAX 1000;
            DEFAULT 100;
            MINSLIDER 0;
            MAXSLIDER 1000;
            CUSTOMGUI LONGSLIDER;
        }
        REAL NETCREATOR_VISIBILITY {
            UNIT PERCENT;
            STEP 0.1;
            MIN 0;
            MAX 100;
            MINSLIDER 0;
            MAXSLIDER 100;
            DEFAULT 100;
            CUSTOMGUI REALSLIDER;
        }
        LONG NETCREATOR_SEED {
            MIN 0;
            MINSLIDER 0;
            MAX 100;
            MAXSLIDER 100;
            CUSTOMGUI LONGSLIDER;
        }
    }
    GROUP ID_PROPAGATION {
        DEFAULT 1;
        BOOL NETCREATOR_PROPAGATION_ENABLE {}
        REAL NETCREATOR_PROPAGATION_SPEED {
            STEP 0.1;
            MIN 1;
            MINSLIDER 1;
            MAX 20;
            MAXSLIDER 20;
            CUSTOMGUI REALSLIDER;
        }
        BOOL NETCREATOR_PROPAGATION_TURBULENCE {}
        LONG NETCREATOR_PROPAGATION_STRENGTH {
            CUSTOMGUI LONGSLIDER;
            DEFAULT 5;
            STEP 1;
            MIN 1;
            MINSLIDER 1;
            MAX 10;
            MAXSLIDER 10;
        }
        REAL NETCREATOR_PROPAGATION_SIZE {
            DEFAULT 0.2;
            CUSTOMGUI REALSLIDER;
            STEP 0.01;
            MIN 0;
            MINSLIDER 0;
            MAX 1;
            MAXSLIDER 1;
        }        
    } 
}