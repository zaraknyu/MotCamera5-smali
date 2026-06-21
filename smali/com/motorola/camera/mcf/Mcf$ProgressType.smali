.class public final enum Lcom/motorola/camera/mcf/Mcf$ProgressType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/mcf/Mcf$ProgressType;

.field public static final enum ALGORITHM_FAILURE:Lcom/motorola/camera/mcf/Mcf$ProgressType;

.field public static final enum ALGORITHM_STARTED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

.field public static final enum ALGORITHM_STOPPED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

.field public static final enum CANCELLED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

.field public static final enum EXIF_JPEG_NOT_RECEIVED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

.field public static final enum FRAME_COLLECTION_FAILURE:Lcom/motorola/camera/mcf/Mcf$ProgressType;

.field public static final enum FRAME_COLLECTION_STARTED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

.field public static final enum FRAME_COLLECTION_STOPPED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

.field public static final enum INVALID:Lcom/motorola/camera/mcf/Mcf$ProgressType;

.field public static final enum REPROCESS_FAILURE:Lcom/motorola/camera/mcf/Mcf$ProgressType;

.field public static final enum REPROCESS_STARTED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

.field public static final enum REPROCESS_STOPPED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

.field public static final enum SEQ_STARTED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

.field public static final enum SEQ_STOPPED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

.field public static final enum STATE_MACHINE_BG_STARTED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

.field public static final enum STATE_MACHINE_BG_TRANSFER_APP:Lcom/motorola/camera/mcf/Mcf$ProgressType;

.field public static final enum STATE_MACHINE_FAILURE:Lcom/motorola/camera/mcf/Mcf$ProgressType;

.field public static final enum STATE_MACHINE_STARTED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

.field public static final enum STATE_MACHINE_STOPPED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

.field public static final enum SWJPEG_REPROC_FAILURE:Lcom/motorola/camera/mcf/Mcf$ProgressType;

.field public static final enum SWJPEG_REPROC_STARTED:Lcom/motorola/camera/mcf/Mcf$ProgressType;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    new-instance v1, Lcom/motorola/camera/mcf/Mcf$ProgressType;

    const-string v0, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/mcf/Mcf$ProgressType;->INVALID:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    new-instance v2, Lcom/motorola/camera/mcf/Mcf$ProgressType;

    const-string v0, "SEQ_STARTED"

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf$ProgressType;->SEQ_STARTED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    new-instance v3, Lcom/motorola/camera/mcf/Mcf$ProgressType;

    const-string v0, "SEQ_STOPPED"

    const/4 v4, 0x2

    invoke-direct {v3, v0, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/mcf/Mcf$ProgressType;->SEQ_STOPPED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    new-instance v4, Lcom/motorola/camera/mcf/Mcf$ProgressType;

    const-string v0, "STATE_MACHINE_STARTED"

    const/4 v5, 0x3

    invoke-direct {v4, v0, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/mcf/Mcf$ProgressType;->STATE_MACHINE_STARTED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    new-instance v5, Lcom/motorola/camera/mcf/Mcf$ProgressType;

    const-string v0, "STATE_MACHINE_STOPPED"

    const/4 v6, 0x4

    invoke-direct {v5, v0, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/motorola/camera/mcf/Mcf$ProgressType;->STATE_MACHINE_STOPPED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    new-instance v6, Lcom/motorola/camera/mcf/Mcf$ProgressType;

    const-string v0, "FRAME_COLLECTION_STARTED"

    const/4 v7, 0x5

    invoke-direct {v6, v0, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/motorola/camera/mcf/Mcf$ProgressType;->FRAME_COLLECTION_STARTED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    new-instance v7, Lcom/motorola/camera/mcf/Mcf$ProgressType;

    const-string v0, "FRAME_COLLECTION_STOPPED"

    const/4 v8, 0x6

    invoke-direct {v7, v0, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/motorola/camera/mcf/Mcf$ProgressType;->FRAME_COLLECTION_STOPPED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    new-instance v8, Lcom/motorola/camera/mcf/Mcf$ProgressType;

    const-string v0, "REPROCESS_STARTED"

    const/4 v9, 0x7

    invoke-direct {v8, v0, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/motorola/camera/mcf/Mcf$ProgressType;->REPROCESS_STARTED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    new-instance v9, Lcom/motorola/camera/mcf/Mcf$ProgressType;

    const-string v0, "REPROCESS_STOPPED"

    const/16 v10, 0x8

    invoke-direct {v9, v0, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/motorola/camera/mcf/Mcf$ProgressType;->REPROCESS_STOPPED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    new-instance v10, Lcom/motorola/camera/mcf/Mcf$ProgressType;

    const-string v0, "ALGORITHM_STARTED"

    const/16 v11, 0x9

    invoke-direct {v10, v0, v11}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/motorola/camera/mcf/Mcf$ProgressType;->ALGORITHM_STARTED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    new-instance v11, Lcom/motorola/camera/mcf/Mcf$ProgressType;

    const-string v0, "ALGORITHM_STOPPED"

    const/16 v12, 0xa

    invoke-direct {v11, v0, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/motorola/camera/mcf/Mcf$ProgressType;->ALGORITHM_STOPPED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    new-instance v12, Lcom/motorola/camera/mcf/Mcf$ProgressType;

    const-string v0, "STATE_MACHINE_FAILURE"

    const/16 v13, 0xb

    invoke-direct {v12, v0, v13}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/motorola/camera/mcf/Mcf$ProgressType;->STATE_MACHINE_FAILURE:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    new-instance v13, Lcom/motorola/camera/mcf/Mcf$ProgressType;

    const-string v0, "FRAME_COLLECTION_FAILURE"

    const/16 v14, 0xc

    invoke-direct {v13, v0, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/motorola/camera/mcf/Mcf$ProgressType;->FRAME_COLLECTION_FAILURE:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    new-instance v14, Lcom/motorola/camera/mcf/Mcf$ProgressType;

    const-string v0, "REPROCESS_FAILURE"

    const/16 v15, 0xd

    invoke-direct {v14, v0, v15}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/motorola/camera/mcf/Mcf$ProgressType;->REPROCESS_FAILURE:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    new-instance v15, Lcom/motorola/camera/mcf/Mcf$ProgressType;

    const-string v0, "ALGORITHM_FAILURE"

    move-object/from16 v16, v1

    const/16 v1, 0xe

    invoke-direct {v15, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/motorola/camera/mcf/Mcf$ProgressType;->ALGORITHM_FAILURE:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$ProgressType;

    const-string v1, "CANCELLED"

    move-object/from16 v17, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$ProgressType;->CANCELLED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    new-instance v1, Lcom/motorola/camera/mcf/Mcf$ProgressType;

    const-string v2, "STATE_MACHINE_BG_STARTED"

    move-object/from16 v18, v0

    const/16 v0, 0x10

    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/mcf/Mcf$ProgressType;->STATE_MACHINE_BG_STARTED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$ProgressType;

    const-string v2, "STATE_MACHINE_BG_TRANSFER_APP"

    move-object/from16 v19, v1

    const/16 v1, 0x11

    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$ProgressType;->STATE_MACHINE_BG_TRANSFER_APP:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    new-instance v1, Lcom/motorola/camera/mcf/Mcf$ProgressType;

    const-string v2, "SWJPEG_REPROC_STARTED"

    move-object/from16 v20, v0

    const/16 v0, 0x12

    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/mcf/Mcf$ProgressType;->SWJPEG_REPROC_STARTED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$ProgressType;

    const-string v2, "SWJPEG_REPROC_FAILURE"

    move-object/from16 v21, v1

    const/16 v1, 0x13

    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$ProgressType;->SWJPEG_REPROC_FAILURE:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    new-instance v1, Lcom/motorola/camera/mcf/Mcf$ProgressType;

    const-string v2, "EXIF_JPEG_NOT_RECEIVED"

    move-object/from16 v22, v0

    const/16 v0, 0x14

    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/mcf/Mcf$ProgressType;->EXIF_JPEG_NOT_RECEIVED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    move-object/from16 v2, v17

    move-object/from16 v17, v19

    move-object/from16 v19, v21

    move-object/from16 v21, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v18

    move-object/from16 v18, v20

    move-object/from16 v20, v22

    filled-new-array/range {v1 .. v21}, [Lcom/motorola/camera/mcf/Mcf$ProgressType;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$ProgressType;->$VALUES:[Lcom/motorola/camera/mcf/Mcf$ProgressType;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/mcf/Mcf$ProgressType;
    .locals 1

    const-class v0, Lcom/motorola/camera/mcf/Mcf$ProgressType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/mcf/Mcf$ProgressType;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/mcf/Mcf$ProgressType;
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$ProgressType;->$VALUES:[Lcom/motorola/camera/mcf/Mcf$ProgressType;

    invoke-virtual {v0}, [Lcom/motorola/camera/mcf/Mcf$ProgressType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/mcf/Mcf$ProgressType;

    return-object v0
.end method
