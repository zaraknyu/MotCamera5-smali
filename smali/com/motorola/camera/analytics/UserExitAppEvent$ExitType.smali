.class public final enum Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

.field public static final enum CAMERA_SETTINGS:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

.field public static final enum COLLAGE_EDITOR:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

.field public static final enum DND_PERMISSION_REQUEST:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

.field public static final enum DOCUMENT_EDITOR:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

.field public static final enum ERROR:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

.field public static final enum GALLERY:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

.field public static final enum GOOGLE_LENS:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

.field public static final enum MISC:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

.field public static final enum MOTO_FEEDBACK:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

.field public static final enum OBJECT_DETECTION:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

.field public static final enum PHOTOS_STABILIZE:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

.field public static final enum POWER:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

.field public static final enum SETTINGS_LOCATION:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

.field public static final enum SUPER_SLOW_MOTION:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

.field public static final enum TIMEDOUT:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

.field public static final enum VIDEO_PLAYER:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

.field public static final enum YOUTUBE_LIVE:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;


# instance fields
.field public final mCheckinName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    new-instance v1, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    const-string v0, "MISC"

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v0}, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->MISC:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    new-instance v2, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    const-string v0, "BACK"

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3, v0}, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v3, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    const/4 v0, 0x2

    const-string v4, "GALRY"

    const-string v5, "GALLERY"

    invoke-direct {v3, v5, v0, v4}, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->GALLERY:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    new-instance v4, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    const-string v0, "POWER"

    const/4 v5, 0x3

    invoke-direct {v4, v0, v5, v0}, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->POWER:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    new-instance v5, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    const/4 v0, 0x4

    const-string v6, "TMOUT"

    const-string v7, "TIMEDOUT"

    invoke-direct {v5, v7, v0, v6}, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->TIMEDOUT:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    new-instance v6, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    const/4 v0, 0x5

    const-string v7, "UREQ"

    const-string v8, "USER_REQ"

    invoke-direct {v6, v8, v0, v7}, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v7, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    const/4 v0, 0x6

    const-string v8, "ERR"

    const-string v9, "ERROR"

    invoke-direct {v7, v9, v0, v8}, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->ERROR:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    new-instance v8, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    const/4 v0, 0x7

    const-string v9, "SMRTCAM"

    const-string v10, "SMART_CAM"

    invoke-direct {v8, v10, v0, v9}, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v9, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    const/16 v0, 0x8

    const-string v10, "YTBLIVE"

    const-string v11, "YOUTUBE_LIVE"

    invoke-direct {v9, v11, v0, v10}, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->YOUTUBE_LIVE:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    new-instance v10, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    const/16 v0, 0x9

    const-string v11, "VIDPL"

    const-string v12, "VIDEO_PLAYER"

    invoke-direct {v10, v12, v0, v11}, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->VIDEO_PLAYER:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    new-instance v11, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    const/16 v0, 0xa

    const-string v12, "SETSLOC"

    const-string v13, "SETTINGS_LOCATION"

    invoke-direct {v11, v13, v0, v12}, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->SETTINGS_LOCATION:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    new-instance v12, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    const/16 v0, 0xb

    const-string v13, "LENS"

    const-string v14, "GOOGLE_LENS"

    invoke-direct {v12, v14, v0, v13}, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->GOOGLE_LENS:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    new-instance v13, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    const/16 v0, 0xc

    const-string v14, "OBJDET"

    const-string v15, "OBJECT_DETECTION"

    invoke-direct {v13, v15, v0, v14}, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->OBJECT_DETECTION:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    new-instance v14, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    const/16 v0, 0xd

    const-string v15, "PHSTB"

    move-object/from16 v16, v1

    const-string v1, "PHOTOS_STABILIZE"

    invoke-direct {v14, v1, v0, v15}, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->PHOTOS_STABILIZE:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    new-instance v15, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    const/16 v0, 0xe

    const-string v1, "DNDPR"

    move-object/from16 v17, v2

    const-string v2, "DND_PERMISSION_REQUEST"

    invoke-direct {v15, v2, v0, v1}, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v15, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->DND_PERMISSION_REQUEST:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    new-instance v0, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    const/16 v1, 0xf

    const-string v2, "MOTFD"

    move-object/from16 v18, v3

    const-string v3, "MOTO_FEEDBACK"

    invoke-direct {v0, v3, v1, v2}, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->MOTO_FEEDBACK:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    new-instance v1, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    const/16 v2, 0x10

    const-string v3, "SUPERSLOWMO"

    move-object/from16 v19, v0

    const-string v0, "SUPER_SLOW_MOTION"

    invoke-direct {v1, v0, v2, v3}, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->SUPER_SLOW_MOTION:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    new-instance v0, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    const/16 v2, 0x11

    const-string v3, "COLLAGE"

    move-object/from16 v20, v1

    const-string v1, "COLLAGE_EDITOR"

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->COLLAGE_EDITOR:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    new-instance v1, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    const/16 v2, 0x12

    const-string v3, "DOCEDIT"

    move-object/from16 v21, v0

    const-string v0, "DOCUMENT_EDITOR"

    invoke-direct {v1, v0, v2, v3}, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->DOCUMENT_EDITOR:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    new-instance v0, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    const/16 v2, 0x13

    const-string v3, "SETTINGS"

    move-object/from16 v22, v1

    const-string v1, "CAMERA_SETTINGS"

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->CAMERA_SETTINGS:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v16, v19

    move-object/from16 v17, v20

    move-object/from16 v18, v21

    move-object/from16 v19, v22

    move-object/from16 v20, v0

    filled-new-array/range {v1 .. v20}, [Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->$VALUES:[Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->mCheckinName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;
    .locals 1

    const-class v0, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;
    .locals 1

    sget-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->$VALUES:[Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    invoke-virtual {v0}, [Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->mCheckinName:Ljava/lang/String;

    return-object p0
.end method
