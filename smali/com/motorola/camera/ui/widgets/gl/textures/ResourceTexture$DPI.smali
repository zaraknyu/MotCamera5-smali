.class public final enum Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final DPI_MAP:Ljava/util/TreeMap;

.field public static final enum HDPI260_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum HDPI280_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum HDPI300_LARGE_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum HDPI300_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum HDPI340_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum HDPI340_SMALL_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum HDPI360_LARGE_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum HDPI360_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum HDPI390_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum HDPI400_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum HDPI420_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum HDPI440_LARGE2_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum HDPI440_LARGEST_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum HDPI440_LARGE_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum HDPI440_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum HDPI450_LARGE_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum HDPI560_LARGEST_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum HDPI560_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum HDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum HDPI_SMALL_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum LDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum MDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum TVDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum XHDPI_LARGER_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum XHDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum XXHDPI_LARGER2_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum XXHDPI_LARGER_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum XXHDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum XXXHDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;


# instance fields
.field public final mDensity:I

.field public final mName:Ljava/lang/String;

.field public final mScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 34

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const/16 v4, 0x78

    const-string v5, "ldpi"

    const-string v1, "LDPI_SCALE"

    const/4 v2, 0x0

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->LDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const/16 v5, 0xa0

    const-string v6, "mdpi"

    const-string v2, "MDPI_SCALE"

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v1, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->MDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const/16 v6, 0xd5

    const-string/jumbo v7, "tvdpi"

    const-string v3, "TVDPI_SCALE"

    const/4 v4, 0x2

    const/high16 v5, 0x3fc00000    # 1.5f

    invoke-direct/range {v2 .. v7}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v2, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->TVDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const/16 v7, 0xee

    const-string v8, "238dpi"

    const-string v4, "HDPI_SMALL_SCALE"

    const/4 v5, 0x3

    const v6, 0x3fbe6666    # 1.4875f

    invoke-direct/range {v3 .. v8}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v3, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI_SMALL_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const/16 v8, 0xf0

    const-string v9, "hdpi"

    const-string v5, "HDPI_SCALE"

    const/4 v6, 0x4

    const/high16 v7, 0x3fc00000    # 1.5f

    invoke-direct/range {v4 .. v9}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v4, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const/16 v9, 0x104

    const-string v10, "260dpi"

    const-string v6, "HDPI260_SCALE"

    const/4 v7, 0x5

    const/high16 v8, 0x3fd00000    # 1.625f

    invoke-direct/range {v5 .. v10}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v5, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI260_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const/16 v10, 0x118

    const-string v11, "280dpi"

    const-string v7, "HDPI280_SCALE"

    const/4 v8, 0x6

    const/high16 v9, 0x3fe00000    # 1.75f

    invoke-direct/range {v6 .. v11}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v6, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI280_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const/16 v11, 0x12c

    const-string v12, "300dpi"

    const-string v8, "HDPI300_SCALE"

    const/4 v9, 0x7

    const/high16 v10, 0x3ff00000    # 1.875f

    invoke-direct/range {v7 .. v12}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v7, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI300_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const/16 v12, 0x132

    const-string v13, "306dpi"

    const-string v9, "HDPI300_LARGE_SCALE"

    const/16 v10, 0x8

    const v11, 0x3ff4cccd    # 1.9125f

    invoke-direct/range {v8 .. v13}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v8, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI300_LARGE_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const/16 v13, 0x140

    const-string/jumbo v14, "xhdpi"

    const-string v10, "XHDPI_SCALE"

    const/16 v11, 0x9

    const/high16 v12, 0x40000000    # 2.0f

    invoke-direct/range {v9 .. v14}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v9, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->XHDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    new-instance v10, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const/16 v14, 0x14c

    const-string v15, "332dpi"

    const-string v11, "XHDPI_LARGER_SCALE"

    const/16 v12, 0xa

    const v13, 0x4004cccd    # 2.075f

    invoke-direct/range {v10 .. v15}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v10, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->XHDPI_LARGER_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    new-instance v11, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const/16 v15, 0x154

    const-string v16, "340dpi"

    const-string v12, "HDPI340_SCALE"

    const/16 v13, 0xb

    const/high16 v14, 0x40080000    # 2.125f

    invoke-direct/range {v11 .. v16}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v11, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI340_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    new-instance v12, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const/16 v16, 0x164

    const-string v17, "356dpi"

    const-string v13, "HDPI340_SMALL_SCALE"

    const/16 v14, 0xc

    const v15, 0x400e6666    # 2.225f

    invoke-direct/range {v12 .. v17}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v12, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI340_SMALL_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    new-instance v13, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const/16 v17, 0x168

    const-string v18, "360dpi"

    const-string v14, "HDPI360_SCALE"

    const/16 v15, 0xd

    const/high16 v16, 0x40100000    # 2.25f

    invoke-direct/range {v13 .. v18}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v13, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI360_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    new-instance v14, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const/16 v18, 0x18e

    const-string v19, "398dpi"

    const-string v15, "HDPI360_LARGE_SCALE"

    const/16 v16, 0xe

    const v17, 0x401f3333    # 2.4875f

    invoke-direct/range {v14 .. v19}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v14, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI360_LARGE_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    new-instance v16, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const/16 v19, 0x186

    const-string v20, "390dpi"

    move-object/from16 v15, v16

    const-string v16, "HDPI390_SCALE"

    const/16 v17, 0xf

    const/high16 v18, 0x401c0000    # 2.4375f

    invoke-direct/range {v15 .. v20}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v15, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI390_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    new-instance v16, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const/16 v20, 0x190

    const-string v21, "400dpi"

    const-string v17, "HDPI400_SCALE"

    const/16 v18, 0x10

    const/high16 v19, 0x40200000    # 2.5f

    invoke-direct/range {v16 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v16, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI400_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    new-instance v17, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const/16 v21, 0x1a4

    const-string v22, "420dpi"

    const-string v18, "HDPI420_SCALE"

    const/16 v19, 0x11

    const/high16 v20, 0x40280000    # 2.625f

    invoke-direct/range {v17 .. v22}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v17, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI420_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    new-instance v18, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const/16 v22, 0x1b6

    const-string v23, "442dpi"

    const-string v19, "HDPI440_LARGEST_SCALE"

    const/16 v20, 0x12

    const v21, 0x402f3333    # 2.7375f

    invoke-direct/range {v18 .. v23}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v18, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI440_LARGEST_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    new-instance v19, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const/16 v23, 0x1b8

    const-string v24, "440dpi"

    const-string v20, "HDPI440_SCALE"

    const/16 v21, 0x13

    const/high16 v22, 0x40300000    # 2.75f

    invoke-direct/range {v19 .. v24}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v19, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI440_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    new-instance v20, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const/16 v24, 0x1be

    const-string v25, "446dpi"

    const-string v21, "HDPI440_LARGE_SCALE"

    const/16 v22, 0x14

    const v23, 0x40326667

    invoke-direct/range {v20 .. v25}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v20, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI440_LARGE_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    new-instance v21, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const/16 v25, 0x1cc

    const-string v26, "460dpi"

    const-string v22, "HDPI440_LARGE2_SCALE"

    const/16 v23, 0x15

    const/high16 v24, 0x40380000    # 2.875f

    invoke-direct/range {v21 .. v26}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v21, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI440_LARGE2_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    new-instance v22, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const/16 v26, 0x1c2

    const-string v27, "450dpi"

    const-string v23, "HDPI450_LARGE_SCALE"

    const/16 v24, 0x16

    const/high16 v25, 0x40340000    # 2.8125f

    invoke-direct/range {v22 .. v27}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v22, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI450_LARGE_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    new-instance v23, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const/16 v27, 0x1e0

    const-string/jumbo v28, "xxhdpi"

    const-string v24, "XXHDPI_SCALE"

    const/16 v25, 0x17

    const/high16 v26, 0x40400000    # 3.0f

    invoke-direct/range {v23 .. v28}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v23, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->XXHDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    new-instance v24, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const/16 v28, 0x1ec

    const-string v29, "492dpi"

    const-string v25, "XXHDPI_LARGER_SCALE"

    const/16 v26, 0x18

    const v27, 0x4044cccd    # 3.075f

    invoke-direct/range {v24 .. v29}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v24, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->XXHDPI_LARGER_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    new-instance v25, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const/16 v29, 0x1f4

    const-string v30, "500dpi"

    const-string v26, "XXHDPI_LARGER2_SCALE"

    const/16 v27, 0x19

    const/high16 v28, 0x40480000    # 3.125f

    invoke-direct/range {v25 .. v30}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v25, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->XXHDPI_LARGER2_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    new-instance v26, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const/16 v30, 0x21c

    const-string v31, "540dpi"

    const-string v27, "HDPI560_LARGEST_SCALE"

    const/16 v28, 0x1a

    const/high16 v29, 0x40580000    # 3.375f

    invoke-direct/range {v26 .. v31}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v26, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI560_LARGEST_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    new-instance v27, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const/16 v31, 0x230

    const-string v32, "560dpi"

    const-string v28, "HDPI560_SCALE"

    const/16 v29, 0x1b

    const/high16 v30, 0x40600000    # 3.5f

    invoke-direct/range {v27 .. v32}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v27, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI560_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    new-instance v28, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const/16 v32, 0x280

    const-string/jumbo v33, "xxxhdpi"

    const-string v29, "XXXHDPI_SCALE"

    const/16 v30, 0x1c

    const/high16 v31, 0x40800000    # 4.0f

    invoke-direct/range {v28 .. v33}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v28, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->XXXHDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    move-object/from16 v29, v28

    move-object/from16 v28, v27

    move-object/from16 v27, v26

    move-object/from16 v26, v25

    move-object/from16 v25, v24

    move-object/from16 v24, v23

    move-object/from16 v23, v22

    move-object/from16 v22, v21

    move-object/from16 v21, v20

    move-object/from16 v20, v19

    move-object/from16 v19, v18

    move-object/from16 v18, v17

    move-object/from16 v17, v16

    move-object/from16 v16, v15

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move-object v12, v11

    move-object v11, v10

    move-object v10, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    filled-new-array/range {v1 .. v29}, [Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->$VALUES:[Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->DPI_MAP:Ljava/util/TreeMap;

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->values()[Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->DPI_MAP:Ljava/util/TreeMap;

    iget v5, v3, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->mDensity:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IFILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->mScale:F

    iput p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->mDensity:I

    iput-object p5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->mName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->$VALUES:[Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    invoke-virtual {v0}, [Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    return-object v0
.end method
