.class public final enum Lcom/motorola/camera/PreviewSize$AspectRatio;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/PreviewSize$AspectRatio;

.field public static final enum CLI_PHOTO:Lcom/motorola/camera/PreviewSize$AspectRatio;

.field public static final enum CLI_PHOTO_ALT:Lcom/motorola/camera/PreviewSize$AspectRatio;

.field public static final enum CLI_VIDEO:Lcom/motorola/camera/PreviewSize$AspectRatio;

.field public static final enum DV_RECTANGLE22V9:Lcom/motorola/camera/PreviewSize$AspectRatio;

.field public static final enum DV_RECTANGLE9V16:Lcom/motorola/camera/PreviewSize$AspectRatio;

.field public static final enum DV_RECTANGLE9V22:Lcom/motorola/camera/PreviewSize$AspectRatio;

.field public static final enum DV_SQUARE:Lcom/motorola/camera/PreviewSize$AspectRatio;

.field public static final enum EQUIRECTANGULAR:Lcom/motorola/camera/PreviewSize$AspectRatio;

.field public static final enum FOLD_LANDSCAPE:Lcom/motorola/camera/PreviewSize$AspectRatio;

.field public static final enum FOLD_PORTRAIT:Lcom/motorola/camera/PreviewSize$AspectRatio;

.field public static final enum HD_WIDESCREEN:Lcom/motorola/camera/PreviewSize$AspectRatio;

.field public static final enum RECTANGLE:Lcom/motorola/camera/PreviewSize$AspectRatio;

.field public static final enum RECTANGLE18V7P7:Lcom/motorola/camera/PreviewSize$AspectRatio;

.field public static final enum RECTANGLE19P5V9:Lcom/motorola/camera/PreviewSize$AspectRatio;

.field public static final enum RECTANGLE20P5V9:Lcom/motorola/camera/PreviewSize$AspectRatio;

.field public static final enum RECTANGLE20V9:Lcom/motorola/camera/PreviewSize$AspectRatio;

.field public static final enum RECTANGLE21V9:Lcom/motorola/camera/PreviewSize$AspectRatio;

.field public static final enum RECTANGLE22V9:Lcom/motorola/camera/PreviewSize$AspectRatio;

.field public static final enum SQUARE:Lcom/motorola/camera/PreviewSize$AspectRatio;

.field public static final enum STANDARD:Lcom/motorola/camera/PreviewSize$AspectRatio;


# instance fields
.field public final size:Lcom/motorola/camera/PreviewSize;


# direct methods
.method static constructor <clinit>()V
    .locals 24

    new-instance v1, Lcom/motorola/camera/PreviewSize$AspectRatio;

    new-instance v0, Lcom/motorola/camera/PreviewSize;

    const/4 v2, 0x4

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    const-string v4, "STANDARD"

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5, v0}, Lcom/motorola/camera/PreviewSize$AspectRatio;-><init>(Ljava/lang/String;ILcom/motorola/camera/PreviewSize;)V

    sput-object v1, Lcom/motorola/camera/PreviewSize$AspectRatio;->STANDARD:Lcom/motorola/camera/PreviewSize$AspectRatio;

    new-instance v0, Lcom/motorola/camera/PreviewSize$AspectRatio;

    new-instance v4, Lcom/motorola/camera/PreviewSize;

    const/16 v5, 0x10

    const/16 v6, 0x9

    invoke-direct {v4, v5, v6}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    const-string v7, "HD_WIDESCREEN"

    const/4 v8, 0x1

    invoke-direct {v0, v7, v8, v4}, Lcom/motorola/camera/PreviewSize$AspectRatio;-><init>(Ljava/lang/String;ILcom/motorola/camera/PreviewSize;)V

    sput-object v0, Lcom/motorola/camera/PreviewSize$AspectRatio;->HD_WIDESCREEN:Lcom/motorola/camera/PreviewSize$AspectRatio;

    new-instance v4, Lcom/motorola/camera/PreviewSize$AspectRatio;

    new-instance v7, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v7, v8, v8}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    const-string v9, "SQUARE"

    const/4 v10, 0x2

    invoke-direct {v4, v9, v10, v7}, Lcom/motorola/camera/PreviewSize$AspectRatio;-><init>(Ljava/lang/String;ILcom/motorola/camera/PreviewSize;)V

    sput-object v4, Lcom/motorola/camera/PreviewSize$AspectRatio;->SQUARE:Lcom/motorola/camera/PreviewSize$AspectRatio;

    move-object v7, v4

    new-instance v4, Lcom/motorola/camera/PreviewSize$AspectRatio;

    new-instance v9, Lcom/motorola/camera/PreviewSize;

    const/16 v10, 0x12

    invoke-direct {v9, v10, v6}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    const-string v11, "EQUIRECTANGULAR"

    invoke-direct {v4, v11, v3, v9}, Lcom/motorola/camera/PreviewSize$AspectRatio;-><init>(Ljava/lang/String;ILcom/motorola/camera/PreviewSize;)V

    sput-object v4, Lcom/motorola/camera/PreviewSize$AspectRatio;->EQUIRECTANGULAR:Lcom/motorola/camera/PreviewSize$AspectRatio;

    new-instance v9, Lcom/motorola/camera/PreviewSize$AspectRatio;

    new-instance v11, Lcom/motorola/camera/PreviewSize;

    const/16 v12, 0x13

    invoke-direct {v11, v12, v6}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    const-string v13, "RECTANGLE"

    invoke-direct {v9, v13, v2, v11}, Lcom/motorola/camera/PreviewSize$AspectRatio;-><init>(Ljava/lang/String;ILcom/motorola/camera/PreviewSize;)V

    sput-object v9, Lcom/motorola/camera/PreviewSize$AspectRatio;->RECTANGLE:Lcom/motorola/camera/PreviewSize$AspectRatio;

    new-instance v11, Lcom/motorola/camera/PreviewSize$AspectRatio;

    new-instance v13, Lcom/motorola/camera/PreviewSize;

    const/16 v14, 0xc3

    const/16 v15, 0x5a

    invoke-direct {v13, v14, v15}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    const-string v14, "RECTANGLE19P5V9"

    const/4 v12, 0x5

    invoke-direct {v11, v14, v12, v13}, Lcom/motorola/camera/PreviewSize$AspectRatio;-><init>(Ljava/lang/String;ILcom/motorola/camera/PreviewSize;)V

    sput-object v11, Lcom/motorola/camera/PreviewSize$AspectRatio;->RECTANGLE19P5V9:Lcom/motorola/camera/PreviewSize$AspectRatio;

    move-object v12, v7

    new-instance v7, Lcom/motorola/camera/PreviewSize$AspectRatio;

    new-instance v13, Lcom/motorola/camera/PreviewSize;

    const/16 v14, 0x14

    invoke-direct {v13, v14, v6}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    const-string v14, "RECTANGLE20V9"

    const/4 v10, 0x6

    invoke-direct {v7, v14, v10, v13}, Lcom/motorola/camera/PreviewSize$AspectRatio;-><init>(Ljava/lang/String;ILcom/motorola/camera/PreviewSize;)V

    sput-object v7, Lcom/motorola/camera/PreviewSize$AspectRatio;->RECTANGLE20V9:Lcom/motorola/camera/PreviewSize$AspectRatio;

    new-instance v10, Lcom/motorola/camera/PreviewSize$AspectRatio;

    new-instance v13, Lcom/motorola/camera/PreviewSize;

    const/16 v14, 0xcd

    invoke-direct {v13, v14, v15}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    const-string v14, "RECTANGLE20P5V9"

    const/4 v15, 0x7

    invoke-direct {v10, v14, v15, v13}, Lcom/motorola/camera/PreviewSize$AspectRatio;-><init>(Ljava/lang/String;ILcom/motorola/camera/PreviewSize;)V

    sput-object v10, Lcom/motorola/camera/PreviewSize$AspectRatio;->RECTANGLE20P5V9:Lcom/motorola/camera/PreviewSize$AspectRatio;

    move-object v13, v9

    new-instance v9, Lcom/motorola/camera/PreviewSize$AspectRatio;

    new-instance v14, Lcom/motorola/camera/PreviewSize;

    const/16 v15, 0x15

    invoke-direct {v14, v15, v6}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    const-string v15, "RECTANGLE21V9"

    const/16 v2, 0x8

    invoke-direct {v9, v15, v2, v14}, Lcom/motorola/camera/PreviewSize$AspectRatio;-><init>(Ljava/lang/String;ILcom/motorola/camera/PreviewSize;)V

    sput-object v9, Lcom/motorola/camera/PreviewSize$AspectRatio;->RECTANGLE21V9:Lcom/motorola/camera/PreviewSize$AspectRatio;

    move-object v2, v10

    new-instance v10, Lcom/motorola/camera/PreviewSize$AspectRatio;

    new-instance v14, Lcom/motorola/camera/PreviewSize;

    const/16 v15, 0x16

    invoke-direct {v14, v15, v6}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    const-string v3, "RECTANGLE22V9"

    invoke-direct {v10, v3, v6, v14}, Lcom/motorola/camera/PreviewSize$AspectRatio;-><init>(Ljava/lang/String;ILcom/motorola/camera/PreviewSize;)V

    sput-object v10, Lcom/motorola/camera/PreviewSize$AspectRatio;->RECTANGLE22V9:Lcom/motorola/camera/PreviewSize$AspectRatio;

    move-object v3, v11

    new-instance v11, Lcom/motorola/camera/PreviewSize$AspectRatio;

    new-instance v14, Lcom/motorola/camera/PreviewSize;

    const/16 v8, 0xb4

    const/16 v5, 0x4d

    invoke-direct {v14, v8, v5}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    const-string v5, "RECTANGLE18V7P7"

    const/16 v8, 0xa

    invoke-direct {v11, v5, v8, v14}, Lcom/motorola/camera/PreviewSize$AspectRatio;-><init>(Ljava/lang/String;ILcom/motorola/camera/PreviewSize;)V

    sput-object v11, Lcom/motorola/camera/PreviewSize$AspectRatio;->RECTANGLE18V7P7:Lcom/motorola/camera/PreviewSize$AspectRatio;

    move-object v5, v3

    move-object v3, v12

    new-instance v12, Lcom/motorola/camera/PreviewSize$AspectRatio;

    new-instance v14, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v14, v15, v6}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    const-string v8, "DV_RECTANGLE22V9"

    const/16 v15, 0xb

    invoke-direct {v12, v8, v15, v14}, Lcom/motorola/camera/PreviewSize$AspectRatio;-><init>(Ljava/lang/String;ILcom/motorola/camera/PreviewSize;)V

    sput-object v12, Lcom/motorola/camera/PreviewSize$AspectRatio;->DV_RECTANGLE22V9:Lcom/motorola/camera/PreviewSize$AspectRatio;

    move-object v8, v5

    move-object v5, v13

    new-instance v13, Lcom/motorola/camera/PreviewSize$AspectRatio;

    new-instance v14, Lcom/motorola/camera/PreviewSize;

    const/16 v15, 0x10

    invoke-direct {v14, v6, v15}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    const-string v15, "DV_RECTANGLE9V16"

    const/16 v6, 0xc

    invoke-direct {v13, v15, v6, v14}, Lcom/motorola/camera/PreviewSize$AspectRatio;-><init>(Ljava/lang/String;ILcom/motorola/camera/PreviewSize;)V

    sput-object v13, Lcom/motorola/camera/PreviewSize$AspectRatio;->DV_RECTANGLE9V16:Lcom/motorola/camera/PreviewSize$AspectRatio;

    new-instance v14, Lcom/motorola/camera/PreviewSize$AspectRatio;

    new-instance v6, Lcom/motorola/camera/PreviewSize;

    const/16 v15, 0x9

    move-object/from16 v23, v0

    const/16 v0, 0x16

    invoke-direct {v6, v15, v0}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    const-string v0, "DV_RECTANGLE9V22"

    const/16 v15, 0xd

    invoke-direct {v14, v0, v15, v6}, Lcom/motorola/camera/PreviewSize$AspectRatio;-><init>(Ljava/lang/String;ILcom/motorola/camera/PreviewSize;)V

    sput-object v14, Lcom/motorola/camera/PreviewSize$AspectRatio;->DV_RECTANGLE9V22:Lcom/motorola/camera/PreviewSize$AspectRatio;

    new-instance v15, Lcom/motorola/camera/PreviewSize$AspectRatio;

    new-instance v0, Lcom/motorola/camera/PreviewSize;

    const/4 v6, 0x1

    invoke-direct {v0, v6, v6}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    const-string v6, "DV_SQUARE"

    move-object/from16 v20, v1

    const/16 v1, 0xe

    invoke-direct {v15, v6, v1, v0}, Lcom/motorola/camera/PreviewSize$AspectRatio;-><init>(Ljava/lang/String;ILcom/motorola/camera/PreviewSize;)V

    sput-object v15, Lcom/motorola/camera/PreviewSize$AspectRatio;->DV_SQUARE:Lcom/motorola/camera/PreviewSize$AspectRatio;

    new-instance v0, Lcom/motorola/camera/PreviewSize$AspectRatio;

    new-instance v1, Lcom/motorola/camera/PreviewSize;

    move-object/from16 v18, v2

    const/4 v2, 0x3

    const/4 v6, 0x4

    invoke-direct {v1, v2, v6}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    const-string v2, "CLI_PHOTO"

    const/16 v6, 0xf

    invoke-direct {v0, v2, v6, v1}, Lcom/motorola/camera/PreviewSize$AspectRatio;-><init>(Ljava/lang/String;ILcom/motorola/camera/PreviewSize;)V

    sput-object v0, Lcom/motorola/camera/PreviewSize$AspectRatio;->CLI_PHOTO:Lcom/motorola/camera/PreviewSize$AspectRatio;

    new-instance v1, Lcom/motorola/camera/PreviewSize$AspectRatio;

    new-instance v2, Lcom/motorola/camera/PreviewSize;

    const/16 v6, 0x23e

    move-object/from16 v19, v0

    const/16 v0, 0x320

    invoke-direct {v2, v6, v0}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    const-string v0, "CLI_PHOTO_ALT"

    const/16 v6, 0x10

    invoke-direct {v1, v0, v6, v2}, Lcom/motorola/camera/PreviewSize$AspectRatio;-><init>(Ljava/lang/String;ILcom/motorola/camera/PreviewSize;)V

    sput-object v1, Lcom/motorola/camera/PreviewSize$AspectRatio;->CLI_PHOTO_ALT:Lcom/motorola/camera/PreviewSize$AspectRatio;

    new-instance v0, Lcom/motorola/camera/PreviewSize$AspectRatio;

    new-instance v2, Lcom/motorola/camera/PreviewSize;

    move-object/from16 v21, v1

    const/16 v1, 0x9

    invoke-direct {v2, v1, v6}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    const-string v6, "CLI_VIDEO"

    const/16 v1, 0x11

    invoke-direct {v0, v6, v1, v2}, Lcom/motorola/camera/PreviewSize$AspectRatio;-><init>(Ljava/lang/String;ILcom/motorola/camera/PreviewSize;)V

    sput-object v0, Lcom/motorola/camera/PreviewSize$AspectRatio;->CLI_VIDEO:Lcom/motorola/camera/PreviewSize$AspectRatio;

    new-instance v1, Lcom/motorola/camera/PreviewSize$AspectRatio;

    new-instance v2, Lcom/motorola/camera/PreviewSize;

    const/16 v6, 0x9

    move-object/from16 v22, v0

    const/16 v0, 0xa

    invoke-direct {v2, v0, v6}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    const-string v0, "FOLD_PORTRAIT"

    const/16 v6, 0x12

    invoke-direct {v1, v0, v6, v2}, Lcom/motorola/camera/PreviewSize$AspectRatio;-><init>(Ljava/lang/String;ILcom/motorola/camera/PreviewSize;)V

    sput-object v1, Lcom/motorola/camera/PreviewSize$AspectRatio;->FOLD_PORTRAIT:Lcom/motorola/camera/PreviewSize$AspectRatio;

    new-instance v0, Lcom/motorola/camera/PreviewSize$AspectRatio;

    new-instance v2, Lcom/motorola/camera/PreviewSize;

    move-object/from16 v17, v1

    const/16 v1, 0xa

    const/16 v6, 0x9

    invoke-direct {v2, v6, v1}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    const-string v1, "FOLD_LANDSCAPE"

    const/16 v6, 0x13

    invoke-direct {v0, v1, v6, v2}, Lcom/motorola/camera/PreviewSize$AspectRatio;-><init>(Ljava/lang/String;ILcom/motorola/camera/PreviewSize;)V

    sput-object v0, Lcom/motorola/camera/PreviewSize$AspectRatio;->FOLD_LANDSCAPE:Lcom/motorola/camera/PreviewSize$AspectRatio;

    move-object v6, v8

    move-object/from16 v8, v18

    move-object/from16 v16, v19

    move-object/from16 v1, v20

    move-object/from16 v18, v22

    move-object/from16 v2, v23

    move-object/from16 v20, v0

    move-object/from16 v19, v17

    move-object/from16 v17, v21

    filled-new-array/range {v1 .. v20}, [Lcom/motorola/camera/PreviewSize$AspectRatio;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/PreviewSize$AspectRatio;->$VALUES:[Lcom/motorola/camera/PreviewSize$AspectRatio;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/motorola/camera/PreviewSize;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/motorola/camera/PreviewSize$AspectRatio;->size:Lcom/motorola/camera/PreviewSize;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/PreviewSize$AspectRatio;
    .locals 1

    const-class v0, Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/PreviewSize$AspectRatio;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/PreviewSize$AspectRatio;
    .locals 1

    sget-object v0, Lcom/motorola/camera/PreviewSize$AspectRatio;->$VALUES:[Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-virtual {v0}, [Lcom/motorola/camera/PreviewSize$AspectRatio;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/PreviewSize$AspectRatio;

    return-object v0
.end method
