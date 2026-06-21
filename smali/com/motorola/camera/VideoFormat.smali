.class public final Lcom/motorola/camera/VideoFormat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CLI_FHD:Landroid/util/Size;

.field public static final DV_FHD_9V16:Landroid/util/Size;

.field public static final DV_FHD_9V16_2:Landroid/util/Size;

.field public static final DV_FHD_9V22:Landroid/util/Size;

.field public static final DV_UHD_8K_9V16:Landroid/util/Size;

.field public static final DV_UHD_8K_9V22:Landroid/util/Size;

.field public static final DV_UHD_9V16:Landroid/util/Size;

.field public static final DV_UHD_9V22:Landroid/util/Size;

.field public static final EMPTY:Lcom/motorola/camera/VideoFormat;

.field public static final EQU_4K:Landroid/util/Size;

.field public static final EQU_FHD:Landroid/util/Size;

.field public static final FHD:Landroid/util/Size;

.field public static final FHD_18V9:Landroid/util/Size;

.field public static final FHD_19P5V9:Landroid/util/Size;

.field public static final FHD_19V9:Landroid/util/Size;

.field public static final FHD_20P5V9:Landroid/util/Size;

.field public static final FHD_20V9:Landroid/util/Size;

.field public static final FHD_21V9:Landroid/util/Size;

.field public static final FHD_21V9_2:Landroid/util/Size;

.field public static final FHD_22V9:Landroid/util/Size;

.field public static final FHD_SIZES:Ljava/util/List;

.field public static final FHD_SQUARE:Landroid/util/Size;

.field public static final FHD_SQUARE_2:Landroid/util/Size;

.field public static final FPS_DEFAULT:Landroid/util/Range;

.field public static final HD:Landroid/util/Size;

.field public static final HD_18V9:Landroid/util/Size;

.field public static final HD_19P5V9:Landroid/util/Size;

.field public static final HD_19V9:Landroid/util/Size;

.field public static final HD_20P5V9:Landroid/util/Size;

.field public static final HD_20P5V9_2:Landroid/util/Size;

.field public static final HD_20V9:Landroid/util/Size;

.field public static final HD_SIZES:Ljava/util/List;

.field public static final QHD:Landroid/util/Size;

.field public static final QHD_2K:Landroid/util/Size;

.field public static final QHD_2K_20V9:Landroid/util/Size;

.field public static final QHD_2K_SIZES:Ljava/util/List;

.field public static final QHD_SIZES:Ljava/util/List;

.field public static final SIZE_COMPARATOR:Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;

.field public static final UHD_4K:Landroid/util/Size;

.field public static final UHD_4K_19P5V9:Landroid/util/Size;

.field public static final UHD_4K_19V9:Landroid/util/Size;

.field public static final UHD_4K_20P5V9:Landroid/util/Size;

.field public static final UHD_4K_20V9:Landroid/util/Size;

.field public static final UHD_4K_20V9_2:Landroid/util/Size;

.field public static final UHD_4K_21V9:Landroid/util/Size;

.field public static final UHD_4K_21V9_2:Landroid/util/Size;

.field public static final UHD_4K_21V9_3:Landroid/util/Size;

.field public static final UHD_4K_22V9:Landroid/util/Size;

.field public static final UHD_4K_22V9_2:Landroid/util/Size;

.field public static final UHD_4K_SIZES:Ljava/util/List;

.field public static final UHD_4K_SQUARE:Landroid/util/Size;

.field public static final UHD_5K:Landroid/util/Size;

.field public static final UHD_5K_SIZES:Ljava/util/List;

.field public static final UHD_6K:Landroid/util/Size;

.field public static final UHD_6K_21V9:Landroid/util/Size;

.field public static final UHD_6K_39V18:Landroid/util/Size;

.field public static final UHD_6K_SIZES:Ljava/util/List;

.field public static final UHD_8K:Landroid/util/Size;

.field public static final UHD_8K_20P5V9:Landroid/util/Size;

.field public static final UHD_8K_20V9:Landroid/util/Size;

.field public static final UHD_8K_22V9:Landroid/util/Size;

.field public static final UHD_8K_SIZES:Ljava/util/List;

.field public static final UHD_8K_SQUARE:Landroid/util/Size;

.field public static final VGA:Landroid/util/Size;

.field public static final VGA_SIZES:Ljava/util/List;

.field public static final VIDEO_RESOLUTIONS:Ljava/util/List;


# instance fields
.field public mIsHevcSupported:Z

.field public final mVideoCaptureRate:Landroid/util/Range;

.field public final mVideoSize:Landroid/util/Size;


# direct methods
.method static constructor <clinit>()V
    .locals 66

    new-instance v0, Lcom/motorola/camera/VideoFormat;

    invoke-direct {v0}, Lcom/motorola/camera/VideoFormat;-><init>()V

    sput-object v0, Lcom/motorola/camera/VideoFormat;->EMPTY:Lcom/motorola/camera/VideoFormat;

    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x1e0

    const/16 v2, 0x280

    invoke-direct {v0, v2, v1}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Lcom/motorola/camera/VideoFormat;->VGA:Landroid/util/Size;

    new-instance v1, Landroid/util/Size;

    const/16 v3, 0x21c

    const/16 v4, 0x3c0

    invoke-direct {v1, v4, v3}, Landroid/util/Size;-><init>(II)V

    sput-object v1, Lcom/motorola/camera/VideoFormat;->QHD:Landroid/util/Size;

    new-instance v5, Landroid/util/Size;

    const/16 v3, 0x2d0

    const/16 v6, 0x500

    invoke-direct {v5, v6, v3}, Landroid/util/Size;-><init>(II)V

    sput-object v5, Lcom/motorola/camera/VideoFormat;->HD:Landroid/util/Size;

    new-instance v3, Landroid/util/Size;

    invoke-direct {v3, v6, v2}, Landroid/util/Size;-><init>(II)V

    sput-object v3, Lcom/motorola/camera/VideoFormat;->HD_18V9:Landroid/util/Size;

    new-instance v7, Landroid/util/Size;

    const/16 v2, 0x25e

    invoke-direct {v7, v6, v2}, Landroid/util/Size;-><init>(II)V

    sput-object v7, Lcom/motorola/camera/VideoFormat;->HD_19V9:Landroid/util/Size;

    new-instance v8, Landroid/util/Size;

    const/16 v2, 0x24e

    invoke-direct {v8, v6, v2}, Landroid/util/Size;-><init>(II)V

    sput-object v8, Lcom/motorola/camera/VideoFormat;->HD_19P5V9:Landroid/util/Size;

    new-instance v9, Landroid/util/Size;

    const/16 v2, 0x240

    invoke-direct {v9, v6, v2}, Landroid/util/Size;-><init>(II)V

    sput-object v9, Lcom/motorola/camera/VideoFormat;->HD_20V9:Landroid/util/Size;

    new-instance v10, Landroid/util/Size;

    const/16 v2, 0x230

    invoke-direct {v10, v6, v2}, Landroid/util/Size;-><init>(II)V

    sput-object v10, Lcom/motorola/camera/VideoFormat;->HD_20P5V9:Landroid/util/Size;

    new-instance v11, Landroid/util/Size;

    const/16 v2, 0x232

    invoke-direct {v11, v6, v2}, Landroid/util/Size;-><init>(II)V

    sput-object v11, Lcom/motorola/camera/VideoFormat;->HD_20P5V9_2:Landroid/util/Size;

    new-instance v12, Landroid/util/Size;

    const/16 v2, 0x780

    const/16 v6, 0x438

    invoke-direct {v12, v2, v6}, Landroid/util/Size;-><init>(II)V

    sput-object v12, Lcom/motorola/camera/VideoFormat;->FHD:Landroid/util/Size;

    new-instance v13, Landroid/util/Size;

    invoke-direct {v13, v6, v6}, Landroid/util/Size;-><init>(II)V

    sput-object v13, Lcom/motorola/camera/VideoFormat;->FHD_SQUARE:Landroid/util/Size;

    new-instance v14, Landroid/util/Size;

    const/16 v15, 0x440

    invoke-direct {v14, v15, v6}, Landroid/util/Size;-><init>(II)V

    sput-object v14, Lcom/motorola/camera/VideoFormat;->FHD_SQUARE_2:Landroid/util/Size;

    new-instance v15, Landroid/util/Size;

    invoke-direct {v15, v2, v4}, Landroid/util/Size;-><init>(II)V

    sput-object v15, Lcom/motorola/camera/VideoFormat;->FHD_18V9:Landroid/util/Size;

    new-instance v15, Landroid/util/Size;

    const/16 v4, 0x390

    invoke-direct {v15, v2, v4}, Landroid/util/Size;-><init>(II)V

    sput-object v15, Lcom/motorola/camera/VideoFormat;->FHD_19V9:Landroid/util/Size;

    new-instance v4, Landroid/util/Size;

    const/16 v6, 0x378

    invoke-direct {v4, v2, v6}, Landroid/util/Size;-><init>(II)V

    sput-object v4, Lcom/motorola/camera/VideoFormat;->FHD_19P5V9:Landroid/util/Size;

    new-instance v6, Landroid/util/Size;

    move-object/from16 v26, v0

    const/16 v0, 0x360

    invoke-direct {v6, v2, v0}, Landroid/util/Size;-><init>(II)V

    sput-object v6, Lcom/motorola/camera/VideoFormat;->FHD_20V9:Landroid/util/Size;

    new-instance v0, Landroid/util/Size;

    move-object/from16 v27, v1

    const/16 v1, 0x34a

    invoke-direct {v0, v2, v1}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Lcom/motorola/camera/VideoFormat;->FHD_20P5V9:Landroid/util/Size;

    new-instance v1, Landroid/util/Size;

    move-object/from16 v18, v0

    const/16 v0, 0x330

    invoke-direct {v1, v2, v0}, Landroid/util/Size;-><init>(II)V

    sput-object v1, Lcom/motorola/camera/VideoFormat;->FHD_21V9:Landroid/util/Size;

    new-instance v0, Landroid/util/Size;

    move-object/from16 v19, v1

    const/16 v1, 0x336

    invoke-direct {v0, v2, v1}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Lcom/motorola/camera/VideoFormat;->FHD_21V9_2:Landroid/util/Size;

    new-instance v1, Landroid/util/Size;

    move-object/from16 v20, v0

    const/16 v0, 0x310

    invoke-direct {v1, v2, v0}, Landroid/util/Size;-><init>(II)V

    sput-object v1, Lcom/motorola/camera/VideoFormat;->FHD_22V9:Landroid/util/Size;

    new-instance v0, Landroid/util/Size;

    move-object/from16 v22, v1

    const/16 v1, 0x438

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Lcom/motorola/camera/VideoFormat;->CLI_FHD:Landroid/util/Size;

    new-instance v0, Landroid/util/Size;

    const/16 v2, 0x870

    invoke-direct {v0, v2, v1}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Lcom/motorola/camera/VideoFormat;->EQU_FHD:Landroid/util/Size;

    new-instance v1, Landroid/util/Size;

    const/16 v2, 0xf00

    move-object/from16 v25, v0

    const/16 v0, 0x780

    invoke-direct {v1, v2, v0}, Landroid/util/Size;-><init>(II)V

    sput-object v1, Lcom/motorola/camera/VideoFormat;->EQU_4K:Landroid/util/Size;

    new-instance v0, Landroid/util/Size;

    move-object/from16 v35, v1

    const/16 v1, 0x870

    invoke-direct {v0, v2, v1}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Lcom/motorola/camera/VideoFormat;->UHD_4K:Landroid/util/Size;

    new-instance v1, Landroid/util/Size;

    const/16 v2, 0x5a0

    move-object/from16 v29, v0

    const/16 v0, 0xa00

    invoke-direct {v1, v0, v2}, Landroid/util/Size;-><init>(II)V

    sput-object v1, Lcom/motorola/camera/VideoFormat;->QHD_2K:Landroid/util/Size;

    new-instance v2, Landroid/util/Size;

    move-object/from16 v43, v3

    const/16 v3, 0x480

    invoke-direct {v2, v0, v3}, Landroid/util/Size;-><init>(II)V

    sput-object v2, Lcom/motorola/camera/VideoFormat;->QHD_2K_20V9:Landroid/util/Size;

    new-instance v0, Landroid/util/Size;

    move-object/from16 v17, v4

    const/16 v3, 0x780

    const/16 v4, 0x438

    invoke-direct {v0, v4, v3}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Lcom/motorola/camera/VideoFormat;->DV_FHD_9V16:Landroid/util/Size;

    new-instance v4, Landroid/util/Size;

    move-object/from16 v23, v0

    const/16 v0, 0x440

    invoke-direct {v4, v0, v3}, Landroid/util/Size;-><init>(II)V

    sput-object v4, Lcom/motorola/camera/VideoFormat;->DV_FHD_9V16_2:Landroid/util/Size;

    new-instance v0, Landroid/util/Size;

    move-object/from16 v16, v4

    const/16 v4, 0x310

    invoke-direct {v0, v4, v3}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Lcom/motorola/camera/VideoFormat;->DV_FHD_9V22:Landroid/util/Size;

    new-instance v3, Landroid/util/Size;

    const/16 v4, 0x870

    move-object/from16 v21, v0

    const/16 v0, 0xf00

    invoke-direct {v3, v4, v0}, Landroid/util/Size;-><init>(II)V

    sput-object v3, Lcom/motorola/camera/VideoFormat;->DV_UHD_9V16:Landroid/util/Size;

    new-instance v4, Landroid/util/Size;

    move-object/from16 v41, v3

    const/16 v3, 0x622

    invoke-direct {v4, v3, v0}, Landroid/util/Size;-><init>(II)V

    sput-object v4, Lcom/motorola/camera/VideoFormat;->DV_UHD_9V22:Landroid/util/Size;

    new-instance v0, Landroid/util/Size;

    const/16 v3, 0x10e0

    move-object/from16 v42, v4

    const/16 v4, 0x1e00

    invoke-direct {v0, v3, v4}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Lcom/motorola/camera/VideoFormat;->DV_UHD_8K_9V16:Landroid/util/Size;

    new-instance v3, Landroid/util/Size;

    move-object/from16 v48, v0

    const/16 v0, 0xc44

    invoke-direct {v3, v0, v4}, Landroid/util/Size;-><init>(II)V

    sput-object v3, Lcom/motorola/camera/VideoFormat;->DV_UHD_8K_9V22:Landroid/util/Size;

    new-instance v0, Landroid/util/Size;

    const/16 v4, 0x870

    invoke-direct {v0, v4, v4}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Lcom/motorola/camera/VideoFormat;->UHD_4K_SQUARE:Landroid/util/Size;

    new-instance v4, Landroid/util/Size;

    move-object/from16 v24, v0

    const/16 v0, 0x720

    move-object/from16 v49, v3

    const/16 v3, 0xf00

    invoke-direct {v4, v3, v0}, Landroid/util/Size;-><init>(II)V

    sput-object v4, Lcom/motorola/camera/VideoFormat;->UHD_4K_19V9:Landroid/util/Size;

    new-instance v0, Landroid/util/Size;

    move-object/from16 v36, v4

    const/16 v4, 0x6f0

    invoke-direct {v0, v3, v4}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Lcom/motorola/camera/VideoFormat;->UHD_4K_19P5V9:Landroid/util/Size;

    new-instance v4, Landroid/util/Size;

    move-object/from16 v37, v0

    const/16 v0, 0x6c0

    invoke-direct {v4, v3, v0}, Landroid/util/Size;-><init>(II)V

    sput-object v4, Lcom/motorola/camera/VideoFormat;->UHD_4K_20V9:Landroid/util/Size;

    new-instance v0, Landroid/util/Size;

    const/16 v3, 0xcc0

    move-object/from16 v38, v4

    const/16 v4, 0x5bc

    invoke-direct {v0, v3, v4}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Lcom/motorola/camera/VideoFormat;->UHD_4K_20V9_2:Landroid/util/Size;

    new-instance v3, Landroid/util/Size;

    const/16 v4, 0x696

    move-object/from16 v39, v0

    const/16 v0, 0xf00

    invoke-direct {v3, v0, v4}, Landroid/util/Size;-><init>(II)V

    sput-object v3, Lcom/motorola/camera/VideoFormat;->UHD_4K_20P5V9:Landroid/util/Size;

    new-instance v4, Landroid/util/Size;

    move-object/from16 v40, v3

    const/16 v3, 0x660

    invoke-direct {v4, v0, v3}, Landroid/util/Size;-><init>(II)V

    sput-object v4, Lcom/motorola/camera/VideoFormat;->UHD_4K_21V9:Landroid/util/Size;

    new-instance v3, Landroid/util/Size;

    move-object/from16 v28, v4

    const/16 v4, 0x66c

    invoke-direct {v3, v0, v4}, Landroid/util/Size;-><init>(II)V

    sput-object v3, Lcom/motorola/camera/VideoFormat;->UHD_4K_21V9_2:Landroid/util/Size;

    new-instance v4, Landroid/util/Size;

    move-object/from16 v34, v3

    const/16 v3, 0x66e

    invoke-direct {v4, v0, v3}, Landroid/util/Size;-><init>(II)V

    sput-object v4, Lcom/motorola/camera/VideoFormat;->UHD_4K_21V9_3:Landroid/util/Size;

    new-instance v3, Landroid/util/Size;

    move-object/from16 v51, v4

    const/16 v4, 0x622

    invoke-direct {v3, v0, v4}, Landroid/util/Size;-><init>(II)V

    sput-object v3, Lcom/motorola/camera/VideoFormat;->UHD_4K_22V9:Landroid/util/Size;

    new-instance v4, Landroid/util/Size;

    move-object/from16 v30, v3

    const/16 v3, 0x620

    invoke-direct {v4, v0, v3}, Landroid/util/Size;-><init>(II)V

    sput-object v4, Lcom/motorola/camera/VideoFormat;->UHD_4K_22V9_2:Landroid/util/Size;

    new-instance v0, Landroid/util/Size;

    const/16 v3, 0x1400

    move-object/from16 v52, v4

    const/16 v4, 0xb40

    invoke-direct {v0, v3, v4}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Lcom/motorola/camera/VideoFormat;->UHD_5K:Landroid/util/Size;

    new-instance v3, Landroid/util/Size;

    const/16 v4, 0xd38

    move-object/from16 v53, v0

    const/16 v0, 0x1780

    invoke-direct {v3, v0, v4}, Landroid/util/Size;-><init>(II)V

    sput-object v3, Lcom/motorola/camera/VideoFormat;->UHD_6K:Landroid/util/Size;

    new-instance v4, Landroid/util/Size;

    move-object/from16 v54, v5

    const/16 v5, 0xad8

    invoke-direct {v4, v0, v5}, Landroid/util/Size;-><init>(II)V

    sput-object v4, Lcom/motorola/camera/VideoFormat;->UHD_6K_39V18:Landroid/util/Size;

    new-instance v5, Landroid/util/Size;

    move-object/from16 v55, v6

    const/16 v6, 0xa12

    invoke-direct {v5, v0, v6}, Landroid/util/Size;-><init>(II)V

    sput-object v5, Lcom/motorola/camera/VideoFormat;->UHD_6K_21V9:Landroid/util/Size;

    new-instance v0, Landroid/util/Size;

    move-object/from16 v56, v7

    const/16 v6, 0x10e0

    const/16 v7, 0x1e00

    invoke-direct {v0, v7, v6}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Lcom/motorola/camera/VideoFormat;->UHD_8K:Landroid/util/Size;

    new-instance v7, Landroid/util/Size;

    invoke-direct {v7, v6, v6}, Landroid/util/Size;-><init>(II)V

    sput-object v7, Lcom/motorola/camera/VideoFormat;->UHD_8K_SQUARE:Landroid/util/Size;

    new-instance v6, Landroid/util/Size;

    move-object/from16 v44, v0

    const/16 v0, 0xd80

    move-object/from16 v50, v7

    const/16 v7, 0x1e00

    invoke-direct {v6, v7, v0}, Landroid/util/Size;-><init>(II)V

    sput-object v6, Lcom/motorola/camera/VideoFormat;->UHD_8K_20V9:Landroid/util/Size;

    new-instance v0, Landroid/util/Size;

    move-object/from16 v45, v6

    const/16 v6, 0xd2c

    invoke-direct {v0, v7, v6}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Lcom/motorola/camera/VideoFormat;->UHD_8K_20P5V9:Landroid/util/Size;

    new-instance v6, Landroid/util/Size;

    move-object/from16 v46, v0

    const/16 v0, 0xc44

    invoke-direct {v6, v7, v0}, Landroid/util/Size;-><init>(II)V

    sput-object v6, Lcom/motorola/camera/VideoFormat;->UHD_8K_22V9:Landroid/util/Size;

    new-instance v0, Landroid/util/Range;

    const/16 v7, 0x1e

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v0, v7, v7}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    sput-object v0, Lcom/motorola/camera/VideoFormat;->FPS_DEFAULT:Landroid/util/Range;

    move-object/from16 v47, v6

    filled-new-array/range {v44 .. v50}, [Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v57

    sput-object v57, Lcom/motorola/camera/VideoFormat;->UHD_8K_SIZES:Ljava/util/List;

    filled-new-array {v3, v4, v5}, [Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v58

    sput-object v58, Lcom/motorola/camera/VideoFormat;->UHD_6K_SIZES:Ljava/util/List;

    invoke-static/range {v53 .. v53}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v59

    sput-object v59, Lcom/motorola/camera/VideoFormat;->UHD_5K_SIZES:Ljava/util/List;

    move-object/from16 v33, v30

    move-object/from16 v31, v34

    move-object/from16 v32, v51

    move-object/from16 v34, v52

    move-object/from16 v30, v28

    move-object/from16 v28, v29

    move-object/from16 v29, v24

    filled-new-array/range {v28 .. v42}, [Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v60

    sput-object v60, Lcom/motorola/camera/VideoFormat;->UHD_4K_SIZES:Ljava/util/List;

    filled-new-array {v1, v2}, [Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v61

    sput-object v61, Lcom/motorola/camera/VideoFormat;->QHD_2K_SIZES:Ljava/util/List;

    move-object/from16 v24, v25

    move-object/from16 v25, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v24

    move-object/from16 v24, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v55

    filled-new-array/range {v12 .. v25}, [Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v62

    sput-object v62, Lcom/motorola/camera/VideoFormat;->FHD_SIZES:Ljava/util/List;

    move-object/from16 v6, v43

    move-object/from16 v5, v54

    move-object/from16 v7, v56

    filled-new-array/range {v5 .. v11}, [Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v63

    sput-object v63, Lcom/motorola/camera/VideoFormat;->HD_SIZES:Ljava/util/List;

    invoke-static/range {v27 .. v27}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v64

    sput-object v64, Lcom/motorola/camera/VideoFormat;->QHD_SIZES:Ljava/util/List;

    invoke-static/range {v26 .. v26}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v65

    sput-object v65, Lcom/motorola/camera/VideoFormat;->VGA_SIZES:Ljava/util/List;

    filled-new-array/range {v57 .. v65}, [Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/VideoFormat;->VIDEO_RESOLUTIONS:Ljava/util/List;

    new-instance v0, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/VideoFormat;->SIZE_COMPARATOR:Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    new-instance v0, Landroid/util/Size;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v1}, Landroid/util/Size;-><init>(II)V

    new-instance v3, Landroid/util/Range;

    invoke-direct {v3, v2, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 2
    invoke-direct {p0, v0, v3, v1}, Lcom/motorola/camera/VideoFormat;-><init>(Landroid/util/Size;Landroid/util/Range;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/util/Size;Landroid/util/Range;Z)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    .line 5
    new-instance p1, Landroid/util/Range;

    invoke-virtual {p2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-direct {p1, v0, p2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object p1, p0, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    .line 6
    iput-boolean p3, p0, Lcom/motorola/camera/VideoFormat;->mIsHevcSupported:Z

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/PreviewSize;)V
    .locals 2

    .line 7
    new-instance v0, Landroid/util/Size;

    iget v1, p1, Lcom/motorola/camera/PreviewSize;->width:I

    iget p1, p1, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-direct {v0, v1, p1}, Landroid/util/Size;-><init>(II)V

    sget-object p1, Lcom/motorola/camera/VideoFormat;->FPS_DEFAULT:Landroid/util/Range;

    const/4 v1, 0x0

    .line 8
    invoke-direct {p0, v0, p1, v1}, Lcom/motorola/camera/VideoFormat;-><init>(Landroid/util/Size;Landroid/util/Range;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    .line 9
    const-string/jumbo v0, "x"

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 12
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    .line 13
    new-instance v0, Landroid/util/Size;

    aget-object v2, p1, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {v0, v2, p1}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    .line 14
    sget-object p1, Lcom/motorola/camera/VideoFormat;->FPS_DEFAULT:Landroid/util/Range;

    iput-object p1, p0, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    .line 15
    iput-boolean v3, p0, Lcom/motorola/camera/VideoFormat;->mIsHevcSupported:Z

    return-void

    .line 16
    :cond_0
    array-length v0, p1

    const/4 v4, 0x3

    if-ne v0, v4, :cond_1

    .line 17
    new-instance v0, Landroid/util/Size;

    aget-object v4, p1, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v4, v1}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    .line 18
    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 19
    new-instance v0, Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v0, p0, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    .line 20
    iput-boolean v3, p0, Lcom/motorola/camera/VideoFormat;->mIsHevcSupported:Z

    return-void

    .line 21
    :cond_1
    array-length v0, p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x4

    const-string/jumbo v6, "true"

    if-ne v0, v5, :cond_4

    .line 22
    :try_start_1
    new-instance v0, Landroid/util/Size;

    aget-object v5, p1, v3

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v5, v1}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    .line 23
    aget-object v0, p1, v4

    invoke-static {v0, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    aget-object v0, p1, v4

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 24
    :cond_2
    new-instance v0, Landroid/util/Range;

    aget-object v1, p1, v2

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aget-object p1, p1, v4

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v0, p0, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    .line 26
    iput-boolean v3, p0, Lcom/motorola/camera/VideoFormat;->mIsHevcSupported:Z

    return-void

    .line 27
    :cond_3
    :goto_0
    aget-object v0, p1, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 28
    new-instance v1, Landroid/util/Range;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v1, p0, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    .line 29
    aget-object p1, p1, v4

    invoke-static {p1, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/VideoFormat;->mIsHevcSupported:Z

    return-void

    .line 30
    :cond_4
    array-length v0, p1

    const/4 v7, 0x5

    if-ne v0, v7, :cond_5

    .line 31
    new-instance v0, Landroid/util/Size;

    aget-object v3, p1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v3, v1}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    .line 32
    new-instance v0, Landroid/util/Range;

    aget-object v1, p1, v2

    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aget-object v2, p1, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v0, p0, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    .line 34
    aget-object p1, p1, v5

    invoke-static {p1, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/VideoFormat;->mIsHevcSupported:Z

    return-void

    .line 35
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    .line 36
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static getArea(Landroid/util/Size;)I
    .locals 1

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    mul-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/VideoFormat;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/motorola/camera/VideoFormat;

    iget-object v1, p0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    iget-object v2, p1, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v1, v2}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    iget-object v2, p1, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {v1, v2}, Landroid/util/Range;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean p0, p0, Lcom/motorola/camera/VideoFormat;->mIsHevcSupported:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    iget-boolean p1, p1, Lcom/motorola/camera/VideoFormat;->mIsHevcSupported:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x56a

    mul-int/lit8 v0, v0, 0x2a

    iget-object p0, p0, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x2a

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-static {v0}, Lcom/motorola/camera/VideoFormat;->getArea(Landroid/util/Size;)I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "x"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/motorola/camera/VideoFormat;->mIsHevcSupported:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method
