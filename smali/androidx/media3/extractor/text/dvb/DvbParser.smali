.class public final Landroidx/media3/extractor/text/dvb/DvbParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/text/SubtitleParser;


# static fields
.field public static final defaultMap2To4:[B

.field public static final defaultMap2To8:[B

.field public static final defaultMap4To8:[B


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public final canvas:Landroid/graphics/Canvas;

.field public final defaultClutDefinition:Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;

.field public final defaultDisplayDefinition:Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;

.field public final defaultPaint:Landroid/graphics/Paint;

.field public final fillRegionPaint:Landroid/graphics/Paint;

.field public final subtitleService:Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Landroidx/media3/extractor/text/dvb/DvbParser;->defaultMap2To4:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Landroidx/media3/extractor/text/dvb/DvbParser;->defaultMap2To8:[B

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Landroidx/media3/extractor/text/dvb/DvbParser;->defaultMap4To8:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x7t
        0x8t
        0xft
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x77t
        -0x78t
        -0x1t
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0x11t
        0x22t
        0x33t
        0x44t
        0x55t
        0x66t
        0x77t
        -0x78t
        -0x67t
        -0x56t
        -0x45t
        -0x34t
        -0x23t
        -0x12t
        -0x1t
    .end array-data
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-direct {v0, p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result p1

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Landroidx/media3/extractor/text/dvb/DvbParser;->defaultPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Landroidx/media3/extractor/text/dvb/DvbParser;->fillRegionPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    iput-object v2, p0, Landroidx/media3/extractor/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    new-instance v3, Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;

    const/4 v8, 0x0

    const/16 v9, 0x23f

    const/16 v4, 0x2cf

    const/16 v5, 0x23f

    const/4 v6, 0x0

    const/16 v7, 0x2cf

    invoke-direct/range {v3 .. v9}, Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;-><init>(IIIIII)V

    iput-object v3, p0, Landroidx/media3/extractor/text/dvb/DvbParser;->defaultDisplayDefinition:Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;

    new-instance v2, Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;

    const/high16 v3, -0x1000000

    const v4, -0x808081

    const/4 v5, -0x1

    filled-new-array {v1, v5, v3, v4}, [I

    move-result-object v3

    invoke-static {}, Landroidx/media3/extractor/text/dvb/DvbParser;->generateDefault4BitClutEntries()[I

    move-result-object v4

    invoke-static {}, Landroidx/media3/extractor/text/dvb/DvbParser;->generateDefault8BitClutEntries()[I

    move-result-object v5

    invoke-direct {v2, v1, v3, v4, v5}, Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;-><init>(I[I[I[I)V

    iput-object v2, p0, Landroidx/media3/extractor/text/dvb/DvbParser;->defaultClutDefinition:Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;

    new-instance v1, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;

    invoke-direct {v1, p1, v0}, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;-><init>(II)V

    iput-object v1, p0, Landroidx/media3/extractor/text/dvb/DvbParser;->subtitleService:Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;

    return-void
.end method

.method public static buildClutMapTable(IILandroidx/media3/extractor/VorbisBitArray;)[B
    .locals 3

    new-array v0, p0, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    invoke-virtual {p2, p1}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static generateDefault4BitClutEntries()[I
    .locals 9

    const/16 v0, 0x10

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    const/4 v3, 0x1

    :goto_0
    if-ge v3, v0, :cond_7

    const/16 v4, 0x8

    const/16 v5, 0xff

    if-ge v3, v4, :cond_3

    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_1

    :cond_0
    move v4, v2

    :goto_1
    and-int/lit8 v6, v3, 0x2

    if-eqz v6, :cond_1

    move v6, v5

    goto :goto_2

    :cond_1
    move v6, v2

    :goto_2
    and-int/lit8 v7, v3, 0x4

    if-eqz v7, :cond_2

    move v7, v5

    goto :goto_3

    :cond_2
    move v7, v2

    :goto_3
    invoke-static {v5, v4, v6, v7}, Landroidx/media3/extractor/text/dvb/DvbParser;->getColor(IIII)I

    move-result v4

    aput v4, v1, v3

    goto :goto_7

    :cond_3
    and-int/lit8 v4, v3, 0x1

    const/16 v6, 0x7f

    if-eqz v4, :cond_4

    move v4, v6

    goto :goto_4

    :cond_4
    move v4, v2

    :goto_4
    and-int/lit8 v7, v3, 0x2

    if-eqz v7, :cond_5

    move v7, v6

    goto :goto_5

    :cond_5
    move v7, v2

    :goto_5
    and-int/lit8 v8, v3, 0x4

    if-eqz v8, :cond_6

    goto :goto_6

    :cond_6
    move v6, v2

    :goto_6
    invoke-static {v5, v4, v7, v6}, Landroidx/media3/extractor/text/dvb/DvbParser;->getColor(IIII)I

    move-result v4

    aput v4, v1, v3

    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    return-object v1
.end method

.method public static generateDefault8BitClutEntries()[I
    .locals 11

    const/16 v0, 0x100

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_20

    const/16 v4, 0x8

    const/16 v5, 0xff

    if-ge v3, v4, :cond_3

    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_1

    :cond_0
    move v4, v2

    :goto_1
    and-int/lit8 v6, v3, 0x2

    if-eqz v6, :cond_1

    move v6, v5

    goto :goto_2

    :cond_1
    move v6, v2

    :goto_2
    and-int/lit8 v7, v3, 0x4

    if-eqz v7, :cond_2

    goto :goto_3

    :cond_2
    move v5, v2

    :goto_3
    const/16 v7, 0x3f

    invoke-static {v7, v4, v6, v5}, Landroidx/media3/extractor/text/dvb/DvbParser;->getColor(IIII)I

    move-result v4

    aput v4, v1, v3

    goto/16 :goto_1c

    :cond_3
    and-int/lit16 v6, v3, 0x88

    const/16 v7, 0xaa

    const/16 v8, 0x55

    if-eqz v6, :cond_19

    const/16 v9, 0x7f

    if-eq v6, v4, :cond_12

    const/16 v4, 0x80

    const/16 v7, 0x2b

    if-eq v6, v4, :cond_b

    const/16 v4, 0x88

    if-eq v6, v4, :cond_4

    goto/16 :goto_1c

    :cond_4
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_5

    move v4, v7

    goto :goto_4

    :cond_5
    move v4, v2

    :goto_4
    and-int/lit8 v6, v3, 0x10

    if-eqz v6, :cond_6

    move v6, v8

    goto :goto_5

    :cond_6
    move v6, v2

    :goto_5
    add-int/2addr v4, v6

    and-int/lit8 v6, v3, 0x2

    if-eqz v6, :cond_7

    move v6, v7

    goto :goto_6

    :cond_7
    move v6, v2

    :goto_6
    and-int/lit8 v9, v3, 0x20

    if-eqz v9, :cond_8

    move v9, v8

    goto :goto_7

    :cond_8
    move v9, v2

    :goto_7
    add-int/2addr v6, v9

    and-int/lit8 v9, v3, 0x4

    if-eqz v9, :cond_9

    goto :goto_8

    :cond_9
    move v7, v2

    :goto_8
    and-int/lit8 v9, v3, 0x40

    if-eqz v9, :cond_a

    goto :goto_9

    :cond_a
    move v8, v2

    :goto_9
    add-int/2addr v7, v8

    invoke-static {v5, v4, v6, v7}, Landroidx/media3/extractor/text/dvb/DvbParser;->getColor(IIII)I

    move-result v4

    aput v4, v1, v3

    goto/16 :goto_1c

    :cond_b
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_c

    move v4, v7

    goto :goto_a

    :cond_c
    move v4, v2

    :goto_a
    add-int/2addr v4, v9

    and-int/lit8 v6, v3, 0x10

    if-eqz v6, :cond_d

    move v6, v8

    goto :goto_b

    :cond_d
    move v6, v2

    :goto_b
    add-int/2addr v4, v6

    and-int/lit8 v6, v3, 0x2

    if-eqz v6, :cond_e

    move v6, v7

    goto :goto_c

    :cond_e
    move v6, v2

    :goto_c
    add-int/2addr v6, v9

    and-int/lit8 v10, v3, 0x20

    if-eqz v10, :cond_f

    move v10, v8

    goto :goto_d

    :cond_f
    move v10, v2

    :goto_d
    add-int/2addr v6, v10

    and-int/lit8 v10, v3, 0x4

    if-eqz v10, :cond_10

    goto :goto_e

    :cond_10
    move v7, v2

    :goto_e
    add-int/2addr v7, v9

    and-int/lit8 v9, v3, 0x40

    if-eqz v9, :cond_11

    goto :goto_f

    :cond_11
    move v8, v2

    :goto_f
    add-int/2addr v7, v8

    invoke-static {v5, v4, v6, v7}, Landroidx/media3/extractor/text/dvb/DvbParser;->getColor(IIII)I

    move-result v4

    aput v4, v1, v3

    goto/16 :goto_1c

    :cond_12
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_13

    move v4, v8

    goto :goto_10

    :cond_13
    move v4, v2

    :goto_10
    and-int/lit8 v5, v3, 0x10

    if-eqz v5, :cond_14

    move v5, v7

    goto :goto_11

    :cond_14
    move v5, v2

    :goto_11
    add-int/2addr v4, v5

    and-int/lit8 v5, v3, 0x2

    if-eqz v5, :cond_15

    move v5, v8

    goto :goto_12

    :cond_15
    move v5, v2

    :goto_12
    and-int/lit8 v6, v3, 0x20

    if-eqz v6, :cond_16

    move v6, v7

    goto :goto_13

    :cond_16
    move v6, v2

    :goto_13
    add-int/2addr v5, v6

    and-int/lit8 v6, v3, 0x4

    if-eqz v6, :cond_17

    goto :goto_14

    :cond_17
    move v8, v2

    :goto_14
    and-int/lit8 v6, v3, 0x40

    if-eqz v6, :cond_18

    goto :goto_15

    :cond_18
    move v7, v2

    :goto_15
    add-int/2addr v8, v7

    invoke-static {v9, v4, v5, v8}, Landroidx/media3/extractor/text/dvb/DvbParser;->getColor(IIII)I

    move-result v4

    aput v4, v1, v3

    goto :goto_1c

    :cond_19
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_1a

    move v4, v8

    goto :goto_16

    :cond_1a
    move v4, v2

    :goto_16
    and-int/lit8 v6, v3, 0x10

    if-eqz v6, :cond_1b

    move v6, v7

    goto :goto_17

    :cond_1b
    move v6, v2

    :goto_17
    add-int/2addr v4, v6

    and-int/lit8 v6, v3, 0x2

    if-eqz v6, :cond_1c

    move v6, v8

    goto :goto_18

    :cond_1c
    move v6, v2

    :goto_18
    and-int/lit8 v9, v3, 0x20

    if-eqz v9, :cond_1d

    move v9, v7

    goto :goto_19

    :cond_1d
    move v9, v2

    :goto_19
    add-int/2addr v6, v9

    and-int/lit8 v9, v3, 0x4

    if-eqz v9, :cond_1e

    goto :goto_1a

    :cond_1e
    move v8, v2

    :goto_1a
    and-int/lit8 v9, v3, 0x40

    if-eqz v9, :cond_1f

    goto :goto_1b

    :cond_1f
    move v7, v2

    :goto_1b
    add-int/2addr v8, v7

    invoke-static {v5, v4, v6, v8}, Landroidx/media3/extractor/text/dvb/DvbParser;->getColor(IIII)I

    move-result v4

    aput v4, v1, v3

    :goto_1c
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_20
    return-object v1
.end method

.method public static getColor(IIII)I
    .locals 0

    shl-int/lit8 p0, p0, 0x18

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x8

    or-int/2addr p0, p1

    or-int/2addr p0, p3

    return p0
.end method

.method public static paintPixelDataSubBlock([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v7, p5

    new-instance v8, Landroidx/media3/extractor/VorbisBitArray;

    array-length v2, v0

    invoke-direct {v8, v2, v0}, Landroidx/media3/extractor/VorbisBitArray;-><init>(I[B)V

    move/from16 v2, p3

    move/from16 v9, p4

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    invoke-virtual {v8}, Landroidx/media3/extractor/VorbisBitArray;->bitsLeft()I

    move-result v3

    if-eqz v3, :cond_21

    const/16 v13, 0x8

    invoke-virtual {v8, v13}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v3

    const/16 v4, 0xf0

    if-eq v3, v4, :cond_20

    const/4 v15, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x4

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    goto/16 :goto_15

    :pswitch_0
    const/16 v3, 0x10

    invoke-static {v3, v13, v8}, Landroidx/media3/extractor/text/dvb/DvbParser;->buildClutMapTable(IILandroidx/media3/extractor/VorbisBitArray;)[B

    move-result-object v11

    goto/16 :goto_15

    :pswitch_1
    invoke-static {v6, v13, v8}, Landroidx/media3/extractor/text/dvb/DvbParser;->buildClutMapTable(IILandroidx/media3/extractor/VorbisBitArray;)[B

    move-result-object v10

    goto/16 :goto_15

    :pswitch_2
    invoke-static {v6, v6, v8}, Landroidx/media3/extractor/text/dvb/DvbParser;->buildClutMapTable(IILandroidx/media3/extractor/VorbisBitArray;)[B

    move-result-object v12

    goto/16 :goto_15

    :pswitch_3
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v8, v13}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v4

    if-eqz v4, :cond_0

    move/from16 v16, v3

    move/from16 v17, v15

    goto :goto_2

    :cond_0
    invoke-virtual {v8}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v4

    const/4 v5, 0x7

    if-nez v4, :cond_2

    invoke-virtual {v8, v5}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v4

    if-eqz v4, :cond_1

    move/from16 v16, v3

    move/from16 v17, v4

    const/4 v4, 0x0

    goto :goto_2

    :cond_1
    move/from16 v16, v15

    const/4 v4, 0x0

    const/16 v17, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v8, v5}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v4

    invoke-virtual {v8, v13}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v5

    move/from16 v16, v3

    move/from16 v17, v4

    move v4, v5

    :goto_2
    if-eqz v17, :cond_3

    if-eqz v7, :cond_3

    aget v3, p1, v4

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v3, v2

    int-to-float v4, v9

    add-int v5, v2, v17

    int-to-float v5, v5

    add-int/lit8 v6, v9, 0x1

    int-to-float v6, v6

    move/from16 v18, v2

    move-object/from16 v2, p6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_3
    move/from16 v18, v2

    :goto_3
    add-int v2, v18, v17

    if-eqz v16, :cond_4

    goto/16 :goto_15

    :cond_4
    move/from16 v3, v16

    goto :goto_1

    :pswitch_4
    if-ne v1, v4, :cond_6

    if-nez v11, :cond_5

    sget-object v3, Landroidx/media3/extractor/text/dvb/DvbParser;->defaultMap4To8:[B

    goto :goto_4

    :cond_5
    move-object v3, v11

    :goto_4
    move-object/from16 v16, v3

    goto :goto_5

    :cond_6
    const/16 v16, 0x0

    :goto_5
    const/4 v3, 0x0

    :goto_6
    invoke-virtual {v8, v6}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v17

    if-eqz v17, :cond_7

    move v0, v3

    move/from16 v18, v17

    move/from16 v17, v15

    goto :goto_b

    :cond_7
    invoke-virtual {v8}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v17

    if-nez v17, :cond_9

    invoke-virtual {v8, v4}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v17

    if-eqz v17, :cond_8

    add-int/lit8 v17, v17, 0x2

    move v0, v3

    :goto_7
    const/16 v18, 0x0

    goto :goto_b

    :cond_8
    move v0, v15

    :goto_8
    const/16 v17, 0x0

    goto :goto_7

    :cond_9
    invoke-virtual {v8}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v17

    if-nez v17, :cond_a

    invoke-virtual {v8, v5}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v17

    add-int/lit8 v17, v17, 0x4

    invoke-virtual {v8, v6}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v18

    :goto_9
    move v0, v3

    goto :goto_b

    :cond_a
    invoke-virtual {v8, v5}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v0

    if-eqz v0, :cond_e

    if-eq v0, v15, :cond_d

    if-eq v0, v5, :cond_c

    if-eq v0, v4, :cond_b

    move v0, v3

    goto :goto_8

    :cond_b
    invoke-virtual {v8, v13}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v0

    add-int/lit8 v17, v0, 0x19

    invoke-virtual {v8, v6}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v0

    :goto_a
    move/from16 v18, v0

    goto :goto_9

    :cond_c
    invoke-virtual {v8, v6}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v0

    add-int/lit8 v17, v0, 0x9

    invoke-virtual {v8, v6}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v0

    goto :goto_a

    :cond_d
    move v0, v3

    move/from16 v17, v5

    goto :goto_7

    :cond_e
    move v0, v3

    move/from16 v17, v15

    goto :goto_7

    :goto_b
    if-eqz v17, :cond_10

    if-eqz v7, :cond_10

    if-eqz v16, :cond_f

    aget-byte v18, v16, v18

    :cond_f
    aget v3, p1, v18

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v3, v2

    move/from16 v18, v4

    int-to-float v4, v9

    add-int v5, v2, v17

    int-to-float v5, v5

    add-int/lit8 v6, v9, 0x1

    int-to-float v6, v6

    move/from16 v13, v18

    const/4 v14, 0x2

    move/from16 v18, v2

    move-object/from16 v2, p6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_c

    :cond_10
    move/from16 v18, v2

    move v13, v4

    move v14, v5

    :goto_c
    add-int v2, v18, v17

    if-eqz v0, :cond_11

    invoke-virtual {v8}, Landroidx/media3/extractor/VorbisBitArray;->byteAlign()V

    goto/16 :goto_15

    :cond_11
    move v3, v0

    move v4, v13

    move v5, v14

    const/4 v6, 0x4

    const/16 v13, 0x8

    goto/16 :goto_6

    :pswitch_5
    move v13, v4

    move v14, v5

    if-ne v1, v13, :cond_13

    if-nez v10, :cond_12

    sget-object v0, Landroidx/media3/extractor/text/dvb/DvbParser;->defaultMap2To8:[B

    goto :goto_d

    :cond_12
    move-object v0, v10

    goto :goto_d

    :cond_13
    if-ne v1, v14, :cond_15

    if-nez v12, :cond_14

    sget-object v0, Landroidx/media3/extractor/text/dvb/DvbParser;->defaultMap2To4:[B

    goto :goto_d

    :cond_14
    move-object v0, v12

    goto :goto_d

    :cond_15
    const/4 v0, 0x0

    :goto_d
    const/4 v3, 0x0

    :goto_e
    invoke-virtual {v8, v14}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v4

    if-eqz v4, :cond_16

    move/from16 v16, v3

    move v6, v4

    move/from16 v17, v15

    :goto_f
    const/16 v4, 0x8

    :goto_10
    const/4 v5, 0x4

    goto/16 :goto_13

    :cond_16
    invoke-virtual {v8}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-virtual {v8, v13}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v4

    add-int/lit8 v5, v4, 0x3

    invoke-virtual {v8, v14}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v4

    move/from16 v16, v3

    move v6, v4

    move/from16 v17, v5

    goto :goto_f

    :cond_17
    invoke-virtual {v8}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_18

    move/from16 v16, v3

    move/from16 v17, v15

    const/16 v4, 0x8

    const/4 v5, 0x4

    :goto_11
    const/4 v6, 0x0

    goto :goto_13

    :cond_18
    invoke-virtual {v8, v14}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v4

    if-eqz v4, :cond_1c

    if-eq v4, v15, :cond_1b

    if-eq v4, v14, :cond_1a

    if-eq v4, v13, :cond_19

    move/from16 v16, v3

    const/16 v4, 0x8

    const/4 v5, 0x4

    :goto_12
    const/4 v6, 0x0

    const/16 v17, 0x0

    goto :goto_13

    :cond_19
    const/16 v4, 0x8

    invoke-virtual {v8, v4}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1d

    invoke-virtual {v8, v14}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v6

    move/from16 v16, v3

    move/from16 v17, v5

    goto :goto_10

    :cond_1a
    const/16 v4, 0x8

    const/4 v5, 0x4

    invoke-virtual {v8, v5}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v6

    add-int/lit8 v6, v6, 0xc

    invoke-virtual {v8, v14}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v16

    move/from16 v17, v6

    move/from16 v6, v16

    move/from16 v16, v3

    goto :goto_13

    :cond_1b
    const/16 v4, 0x8

    const/4 v5, 0x4

    move/from16 v16, v3

    move/from16 v17, v14

    goto :goto_11

    :cond_1c
    const/16 v4, 0x8

    const/4 v5, 0x4

    move/from16 v16, v15

    goto :goto_12

    :goto_13
    if-eqz v17, :cond_1e

    if-eqz v7, :cond_1e

    if-eqz v0, :cond_1d

    aget-byte v6, v0, v6

    :cond_1d
    aget v3, p1, v6

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v3, v2

    move v6, v4

    int-to-float v4, v9

    add-int v5, v2, v17

    int-to-float v5, v5

    add-int/lit8 v6, v9, 0x1

    int-to-float v6, v6

    move/from16 v18, v2

    const/16 v19, 0x4

    const/16 v20, 0x8

    move-object/from16 v2, p6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_14

    :cond_1e
    move/from16 v18, v2

    move/from16 v20, v4

    move/from16 v19, v5

    :goto_14
    add-int v2, v18, v17

    if-eqz v16, :cond_1f

    invoke-virtual {v8}, Landroidx/media3/extractor/VorbisBitArray;->byteAlign()V

    goto :goto_15

    :cond_1f
    move-object/from16 v7, p5

    move/from16 v3, v16

    goto/16 :goto_e

    :cond_20
    add-int/lit8 v9, v9, 0x2

    move/from16 v2, p3

    :goto_15
    move-object/from16 v7, p5

    goto/16 :goto_0

    :cond_21
    return-void

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x20
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseClutDefinition(Landroidx/media3/extractor/VorbisBitArray;I)Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;
    .locals 24

    move-object/from16 v0, p0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v2

    invoke-virtual {v0, v1}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    const/4 v3, 0x2

    add-int/lit8 v4, p1, -0x2

    const/high16 v5, -0x1000000

    const v6, -0x808081

    const/4 v7, 0x0

    const/4 v8, -0x1

    filled-new-array {v7, v8, v5, v6}, [I

    move-result-object v5

    invoke-static {}, Landroidx/media3/extractor/text/dvb/DvbParser;->generateDefault4BitClutEntries()[I

    move-result-object v6

    invoke-static {}, Landroidx/media3/extractor/text/dvb/DvbParser;->generateDefault8BitClutEntries()[I

    move-result-object v8

    :goto_0
    if-lez v4, :cond_4

    invoke-virtual {v0, v1}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v9

    invoke-virtual {v0, v1}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v10

    and-int/lit16 v11, v10, 0x80

    if-eqz v11, :cond_0

    move-object v11, v5

    goto :goto_1

    :cond_0
    and-int/lit8 v11, v10, 0x40

    if-eqz v11, :cond_1

    move-object v11, v6

    goto :goto_1

    :cond_1
    move-object v11, v8

    :goto_1
    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_2

    invoke-virtual {v0, v1}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v10

    invoke-virtual {v0, v1}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v12

    invoke-virtual {v0, v1}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v13

    invoke-virtual {v0, v1}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v14

    add-int/lit8 v4, v4, -0x6

    goto :goto_2

    :cond_2
    const/4 v10, 0x6

    invoke-virtual {v0, v10}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v12

    shl-int/2addr v12, v3

    const/4 v13, 0x4

    invoke-virtual {v0, v13}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v14

    shl-int/2addr v14, v13

    invoke-virtual {v0, v13}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v15

    shl-int/lit8 v13, v15, 0x4

    invoke-virtual {v0, v3}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v15

    shl-int/lit8 v10, v15, 0x6

    add-int/lit8 v4, v4, -0x4

    move/from16 v23, v14

    move v14, v10

    move v10, v12

    move/from16 v12, v23

    :goto_2
    const/16 v15, 0xff

    if-nez v10, :cond_3

    move v12, v7

    move v13, v12

    move v14, v15

    :cond_3
    and-int/2addr v14, v15

    rsub-int v14, v14, 0xff

    int-to-byte v14, v14

    move/from16 p1, v4

    int-to-double v3, v10

    add-int/lit8 v12, v12, -0x80

    move/from16 v16, v2

    int-to-double v1, v12

    const-wide v17, 0x3ff66e978d4fdf3bL    # 1.402

    mul-double v17, v17, v1

    move-object v12, v11

    add-double v10, v17, v3

    double-to-int v10, v10

    add-int/lit8 v13, v13, -0x80

    move-object/from16 v17, v8

    int-to-double v7, v13

    const-wide v19, 0x3fd60663c74fb54aL    # 0.34414

    mul-double v19, v19, v7

    sub-double v19, v3, v19

    const-wide v21, 0x3fe6da3c21187e7cL    # 0.71414

    mul-double v1, v1, v21

    sub-double v1, v19, v1

    double-to-int v1, v1

    const-wide v19, 0x3ffc5a1cac083127L    # 1.772

    mul-double v7, v7, v19

    add-double/2addr v7, v3

    double-to-int v2, v7

    const/4 v11, 0x0

    invoke-static {v10, v11, v15}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    move-result v3

    invoke-static {v1, v11, v15}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    move-result v1

    invoke-static {v2, v11, v15}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    move-result v2

    invoke-static {v14, v3, v1, v2}, Landroidx/media3/extractor/text/dvb/DvbParser;->getColor(IIII)I

    move-result v1

    aput v1, v12, v9

    move/from16 v4, p1

    move v7, v11

    move/from16 v2, v16

    move-object/from16 v8, v17

    const/16 v1, 0x8

    const/4 v3, 0x2

    goto/16 :goto_0

    :cond_4
    move/from16 v16, v2

    move-object/from16 v17, v8

    new-instance v0, Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v5, v6, v2}, Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;-><init>(I[I[I[I)V

    return-object v0
.end method

.method public static parseObjectData(Landroidx/media3/extractor/VorbisBitArray;)Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;
    .locals 6

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v2

    invoke-virtual {p0}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    sget-object v5, Landroidx/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    if-ne v2, v4, :cond_0

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v2

    mul-int/2addr v2, v0

    invoke-virtual {p0, v2}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    goto :goto_0

    :cond_0
    if-nez v2, :cond_2

    invoke-virtual {p0, v0}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v2

    invoke-virtual {p0, v0}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v0

    if-lez v2, :cond_1

    new-array v5, v2, [B

    invoke-virtual {p0, v2, v5}, Landroidx/media3/extractor/VorbisBitArray;->readBytes(I[B)V

    :cond_1
    if-lez v0, :cond_2

    new-array v2, v0, [B

    invoke-virtual {p0, v0, v2}, Landroidx/media3/extractor/VorbisBitArray;->readBytes(I[B)V

    goto :goto_1

    :cond_2
    :goto_0
    move-object v2, v5

    :goto_1
    new-instance p0, Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;

    invoke-direct {p0, v1, v3, v5, v2}, Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;-><init>(IZ[B[B)V

    return-object p0
.end method


# virtual methods
.method public final parse([BIILandroidx/media3/extractor/text/SubtitleParser$OutputOptions;Landroidx/media3/common/util/Consumer;)V
    .locals 40

    move-object/from16 v0, p0

    move/from16 v1, p2

    new-instance v2, Landroidx/media3/extractor/VorbisBitArray;

    add-int v3, v1, p3

    move-object/from16 v4, p1

    invoke-direct {v2, v3, v4}, Landroidx/media3/extractor/VorbisBitArray;-><init>(I[B)V

    invoke-virtual {v2, v1}, Landroidx/media3/extractor/VorbisBitArray;->setPosition(I)V

    :goto_0
    invoke-virtual {v2}, Landroidx/media3/extractor/VorbisBitArray;->bitsLeft()I

    move-result v1

    const/16 v3, 0x30

    const/4 v4, 0x3

    const/4 v5, 0x2

    iget-object v7, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->subtitleService:Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;

    const/4 v8, 0x1

    if-lt v1, v3, :cond_b

    const/16 v1, 0x8

    invoke-virtual {v2, v1}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v3

    const/16 v9, 0xf

    if-ne v3, v9, :cond_b

    invoke-virtual {v2, v1}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v3

    const/16 v9, 0x10

    invoke-virtual {v2, v9}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v10

    invoke-virtual {v2, v9}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v11

    invoke-virtual {v2}, Landroidx/media3/extractor/VorbisBitArray;->getBytePosition()I

    move-result v12

    add-int/2addr v12, v11

    mul-int/lit8 v13, v11, 0x8

    invoke-virtual {v2}, Landroidx/media3/extractor/VorbisBitArray;->bitsLeft()I

    move-result v14

    if-le v13, v14, :cond_0

    const-string v1, "DvbParser"

    const-string v3, "Data field length exceeds limit"

    invoke-static {v1, v3}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/media3/extractor/VorbisBitArray;->bitsLeft()I

    move-result v1

    invoke-virtual {v2, v1}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    goto :goto_0

    :cond_0
    const/4 v13, 0x4

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    iget v1, v7, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    if-ne v10, v1, :cond_a

    invoke-virtual {v2, v13}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    invoke-virtual {v2}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v1

    invoke-virtual {v2, v4}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    invoke-virtual {v2, v9}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v14

    invoke-virtual {v2, v9}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v15

    if-eqz v1, :cond_1

    invoke-virtual {v2, v9}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v6

    invoke-virtual {v2, v9}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v1

    invoke-virtual {v2, v9}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v3

    invoke-virtual {v2, v9}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v4

    move/from16 v17, v1

    move/from16 v18, v3

    move/from16 v19, v4

    move/from16 v16, v6

    goto :goto_1

    :cond_1
    move/from16 v17, v14

    move/from16 v19, v15

    const/16 v16, 0x0

    const/16 v18, 0x0

    :goto_1
    new-instance v13, Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;

    invoke-direct/range {v13 .. v19}, Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;-><init>(IIIIII)V

    iput-object v13, v7, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->displayDefinition:Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;

    goto/16 :goto_7

    :pswitch_1
    iget v1, v7, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    if-ne v10, v1, :cond_2

    invoke-static {v2}, Landroidx/media3/extractor/text/dvb/DvbParser;->parseObjectData(Landroidx/media3/extractor/VorbisBitArray;)Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;

    move-result-object v1

    iget-object v3, v7, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->objects:Landroid/util/SparseArray;

    iget v4, v1, Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;->id:I

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_7

    :cond_2
    iget v1, v7, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->ancillaryPageId:I

    if-ne v10, v1, :cond_a

    invoke-static {v2}, Landroidx/media3/extractor/text/dvb/DvbParser;->parseObjectData(Landroidx/media3/extractor/VorbisBitArray;)Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;

    move-result-object v1

    iget-object v3, v7, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->ancillaryObjects:Landroid/util/SparseArray;

    iget v4, v1, Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;->id:I

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_2
    iget v1, v7, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    if-ne v10, v1, :cond_3

    invoke-static {v2, v11}, Landroidx/media3/extractor/text/dvb/DvbParser;->parseClutDefinition(Landroidx/media3/extractor/VorbisBitArray;I)Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;

    move-result-object v1

    iget-object v3, v7, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->cluts:Landroid/util/SparseArray;

    iget v4, v1, Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;->id:I

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_7

    :cond_3
    iget v1, v7, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->ancillaryPageId:I

    if-ne v10, v1, :cond_a

    invoke-static {v2, v11}, Landroidx/media3/extractor/text/dvb/DvbParser;->parseClutDefinition(Landroidx/media3/extractor/VorbisBitArray;I)Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;

    move-result-object v1

    iget-object v3, v7, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->ancillaryCluts:Landroid/util/SparseArray;

    iget v4, v1, Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;->id:I

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_3
    iget-object v3, v7, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->pageComposition:Landroidx/compose/runtime/OffsetApplier;

    iget-object v14, v7, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->regions:Landroid/util/SparseArray;

    iget v7, v7, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    if-ne v10, v7, :cond_a

    if-eqz v3, :cond_a

    invoke-virtual {v2, v1}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v16

    invoke-virtual {v2, v13}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    invoke-virtual {v2}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v17

    invoke-virtual {v2, v4}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    invoke-virtual {v2, v9}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v18

    invoke-virtual {v2, v9}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v19

    invoke-virtual {v2, v4}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    invoke-virtual {v2, v4}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v20

    invoke-virtual {v2, v5}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    invoke-virtual {v2, v1}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v21

    invoke-virtual {v2, v1}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v22

    invoke-virtual {v2, v13}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v23

    invoke-virtual {v2, v5}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v24

    invoke-virtual {v2, v5}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    add-int/lit8 v11, v11, -0xa

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    :goto_2
    if-lez v11, :cond_6

    invoke-virtual {v2, v9}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v7

    invoke-virtual {v2, v5}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v10

    invoke-virtual {v2, v5}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    const/16 v15, 0xc

    invoke-virtual {v2, v15}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v6

    invoke-virtual {v2, v13}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    invoke-virtual {v2, v15}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v15

    add-int/lit8 v25, v11, -0x6

    if-eq v10, v8, :cond_5

    if-ne v10, v5, :cond_4

    goto :goto_3

    :cond_4
    move/from16 v11, v25

    goto :goto_4

    :cond_5
    :goto_3
    invoke-virtual {v2, v1}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    invoke-virtual {v2, v1}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    add-int/lit8 v11, v11, -0x8

    :goto_4
    new-instance v10, Landroidx/media3/extractor/text/dvb/DvbParser$RegionObject;

    invoke-direct {v10, v6, v15}, Landroidx/media3/extractor/text/dvb/DvbParser$RegionObject;-><init>(II)V

    invoke-virtual {v4, v7, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    :cond_6
    new-instance v15, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;

    move-object/from16 v25, v4

    invoke-direct/range {v15 .. v25}, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;-><init>(IZIIIIIIILandroid/util/SparseArray;)V

    move/from16 v1, v16

    iget v3, v3, Landroidx/compose/runtime/OffsetApplier;->nesting:I

    if-nez v3, :cond_7

    invoke-virtual {v14, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;

    if-eqz v1, :cond_7

    iget-object v1, v1, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->regionObjects:Landroid/util/SparseArray;

    const/4 v6, 0x0

    :goto_5
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v6, v3, :cond_7

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/extractor/text/dvb/DvbParser$RegionObject;

    iget-object v5, v15, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->regionObjects:Landroid/util/SparseArray;

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_7
    iget v1, v15, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->id:I

    invoke-virtual {v14, v1, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_7

    :pswitch_4
    iget v3, v7, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    if-ne v10, v3, :cond_a

    iget-object v3, v7, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->pageComposition:Landroidx/compose/runtime/OffsetApplier;

    invoke-virtual {v2, v1}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    invoke-virtual {v2, v13}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v4

    invoke-virtual {v2, v5}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v6

    invoke-virtual {v2, v5}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    add-int/lit8 v11, v11, -0x2

    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    :goto_6
    if-lez v11, :cond_8

    invoke-virtual {v2, v1}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v8

    invoke-virtual {v2, v1}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    invoke-virtual {v2, v9}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v10

    invoke-virtual {v2, v9}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v13

    add-int/lit8 v11, v11, -0x6

    new-instance v14, Landroidx/media3/extractor/text/dvb/DvbParser$PageRegion;

    invoke-direct {v14, v10, v13}, Landroidx/media3/extractor/text/dvb/DvbParser$PageRegion;-><init>(II)V

    invoke-virtual {v5, v8, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_6

    :cond_8
    new-instance v1, Landroidx/compose/runtime/OffsetApplier;

    invoke-direct {v1, v4, v6, v5}, Landroidx/compose/runtime/OffsetApplier;-><init>(IILandroid/util/SparseArray;)V

    if-eqz v6, :cond_9

    iput-object v1, v7, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->pageComposition:Landroidx/compose/runtime/OffsetApplier;

    iget-object v1, v7, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->regions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    iget-object v1, v7, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->cluts:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    iget-object v1, v7, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->objects:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    goto :goto_7

    :cond_9
    if-eqz v3, :cond_a

    iget v3, v3, Landroidx/compose/runtime/OffsetApplier;->offset:I

    if-eq v3, v4, :cond_a

    iput-object v1, v7, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->pageComposition:Landroidx/compose/runtime/OffsetApplier;

    :cond_a
    :goto_7
    invoke-virtual {v2}, Landroidx/media3/extractor/VorbisBitArray;->getBytePosition()I

    move-result v1

    sub-int/2addr v12, v1

    invoke-virtual {v2, v12}, Landroidx/media3/extractor/VorbisBitArray;->skipBytes(I)V

    goto/16 :goto_0

    :cond_b
    iget-object v1, v7, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->pageComposition:Landroidx/compose/runtime/OffsetApplier;

    if-nez v1, :cond_c

    new-instance v9, Landroidx/media3/extractor/text/CuesWithTiming;

    sget-object v0, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/ImmutableList$Itr;

    sget-object v14, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v9 .. v14}, Landroidx/media3/extractor/text/CuesWithTiming;-><init>(JJLjava/util/List;)V

    :goto_8
    move-object/from16 v0, p5

    goto/16 :goto_13

    :cond_c
    iget-object v2, v7, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->displayDefinition:Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;

    if-eqz v2, :cond_d

    goto :goto_9

    :cond_d
    iget-object v2, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->defaultDisplayDefinition:Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;

    :goto_9
    iget-object v3, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->bitmap:Landroid/graphics/Bitmap;

    iget-object v15, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    if-eqz v3, :cond_e

    iget v6, v2, Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;->width:I

    add-int/2addr v6, v8

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v6, v3, :cond_e

    iget v3, v2, Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;->height:I

    add-int/2addr v3, v8

    iget-object v6, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-eq v3, v6, :cond_f

    :cond_e
    iget v3, v2, Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;->width:I

    add-int/2addr v3, v8

    iget v6, v2, Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;->height:I

    add-int/2addr v6, v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v6, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v15, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_f
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v1, Landroidx/compose/runtime/OffsetApplier;->applier:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    const/4 v6, 0x0

    :goto_a
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v6, v9, :cond_1a

    invoke-virtual {v15}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media3/extractor/text/dvb/DvbParser$PageRegion;

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    iget-object v11, v7, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->regions:Landroid/util/SparseArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;

    iget v11, v9, Landroidx/media3/extractor/text/dvb/DvbParser$PageRegion;->horizontalAddress:I

    iget v12, v2, Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;->horizontalPositionMinimum:I

    add-int/2addr v11, v12

    iget v9, v9, Landroidx/media3/extractor/text/dvb/DvbParser$PageRegion;->verticalAddress:I

    iget v12, v2, Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;->verticalPositionMinimum:I

    add-int/2addr v9, v12

    iget v12, v10, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->width:I

    iget v13, v10, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->clutId:I

    iget v14, v10, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->height:I

    move/from16 p2, v8

    add-int v8, v11, v12

    iget v5, v2, Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;->horizontalPositionMaximum:I

    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int v4, v9, v14

    move-object/from16 v16, v1

    iget v1, v2, Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;->verticalPositionMaximum:I

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v15, v11, v9, v5, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v1, v7, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->cluts:Landroid/util/SparseArray;

    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;

    if-nez v1, :cond_10

    iget-object v1, v7, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->ancillaryCluts:Landroid/util/SparseArray;

    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;

    if-nez v1, :cond_10

    iget-object v1, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->defaultClutDefinition:Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;

    :cond_10
    iget-object v5, v10, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->regionObjects:Landroid/util/SparseArray;

    move/from16 v17, v6

    const/4 v13, 0x0

    :goto_b
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v13, v6, :cond_16

    invoke-virtual {v5, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v5, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v5

    move-object/from16 v5, v18

    check-cast v5, Landroidx/media3/extractor/text/dvb/DvbParser$RegionObject;

    move/from16 v18, v9

    iget-object v9, v7, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->objects:Landroid/util/SparseArray;

    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;

    if-nez v9, :cond_11

    iget-object v9, v7, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->ancillaryObjects:Landroid/util/SparseArray;

    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;

    :cond_11
    move-object v6, v9

    if-eqz v6, :cond_15

    iget-boolean v9, v6, Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;->nonModifyingColorFlag:Z

    if-eqz v9, :cond_12

    const/4 v9, 0x0

    :goto_c
    move/from16 v20, v11

    goto :goto_d

    :cond_12
    iget-object v9, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->defaultPaint:Landroid/graphics/Paint;

    goto :goto_c

    :goto_d
    iget v11, v10, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->depth:I

    move-object/from16 v21, v7

    iget v7, v5, Landroidx/media3/extractor/text/dvb/DvbParser$RegionObject;->horizontalPosition:I

    add-int v7, v20, v7

    iget v5, v5, Landroidx/media3/extractor/text/dvb/DvbParser$RegionObject;->verticalPosition:I

    add-int v5, v18, v5

    move/from16 v22, v5

    const/4 v5, 0x3

    if-ne v11, v5, :cond_13

    iget-object v5, v1, Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;->clutEntries8Bit:[I

    :goto_e
    move/from16 v23, v14

    move-object v14, v9

    goto :goto_f

    :cond_13
    const/4 v5, 0x2

    if-ne v11, v5, :cond_14

    iget-object v5, v1, Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;->clutEntries4Bit:[I

    goto :goto_e

    :cond_14
    iget-object v5, v1, Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;->clutEntries2Bit:[I

    goto :goto_e

    :goto_f
    iget-object v9, v6, Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;->topFieldData:[B

    move/from16 v26, v20

    move-object/from16 v20, v2

    move v2, v12

    move v12, v7

    move/from16 v7, v26

    move/from16 v26, v18

    move-object/from16 v18, v3

    move/from16 v3, v26

    move-object/from16 v26, v10

    move-object v10, v5

    move-object/from16 v5, v26

    move/from16 v26, v22

    move/from16 v22, v13

    move/from16 v13, v26

    move/from16 v26, v23

    invoke-static/range {v9 .. v15}, Landroidx/media3/extractor/text/dvb/DvbParser;->paintPixelDataSubBlock([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    iget-object v9, v6, Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;->bottomFieldData:[B

    add-int/lit8 v13, v13, 0x1

    invoke-static/range {v9 .. v15}, Landroidx/media3/extractor/text/dvb/DvbParser;->paintPixelDataSubBlock([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_10

    :cond_15
    move/from16 v5, v18

    move-object/from16 v18, v3

    move v3, v5

    move-object/from16 v20, v2

    move-object/from16 v21, v7

    move-object v5, v10

    move v7, v11

    move v2, v12

    move/from16 v22, v13

    move/from16 v26, v14

    :goto_10
    add-int/lit8 v13, v22, 0x1

    move v12, v2

    move v9, v3

    move-object v10, v5

    move v11, v7

    move-object/from16 v3, v18

    move-object/from16 v5, v19

    move-object/from16 v2, v20

    move-object/from16 v7, v21

    move/from16 v14, v26

    goto/16 :goto_b

    :cond_16
    move-object/from16 v20, v2

    move-object/from16 v18, v3

    move-object/from16 v21, v7

    move v3, v9

    move-object v5, v10

    move v7, v11

    move v2, v12

    move/from16 v26, v14

    iget-boolean v6, v5, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->fillFlag:Z

    if-eqz v6, :cond_19

    iget v6, v5, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->depth:I

    const/4 v9, 0x3

    if-ne v6, v9, :cond_17

    iget-object v1, v1, Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;->clutEntries8Bit:[I

    iget v5, v5, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->pixelCode8Bit:I

    aget v1, v1, v5

    const/4 v10, 0x2

    goto :goto_11

    :cond_17
    const/4 v10, 0x2

    if-ne v6, v10, :cond_18

    iget-object v1, v1, Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;->clutEntries4Bit:[I

    iget v5, v5, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->pixelCode4Bit:I

    aget v1, v1, v5

    goto :goto_11

    :cond_18
    iget-object v1, v1, Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;->clutEntries2Bit:[I

    iget v5, v5, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->pixelCode2Bit:I

    aget v1, v1, v5

    :goto_11
    iget-object v14, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->fillRegionPaint:Landroid/graphics/Paint;

    invoke-virtual {v14, v1}, Landroid/graphics/Paint;->setColor(I)V

    move v5, v10

    int-to-float v10, v7

    int-to-float v11, v3

    int-to-float v12, v8

    int-to-float v13, v4

    move v1, v5

    move v5, v9

    move-object v9, v15

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_12

    :cond_19
    const/4 v1, 0x2

    const/4 v5, 0x3

    :goto_12
    iget-object v4, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->bitmap:Landroid/graphics/Bitmap;

    move/from16 v6, v26

    invoke-static {v4, v7, v3, v2, v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v26

    int-to-float v4, v7

    move-object/from16 v7, v20

    iget v8, v7, Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;->width:I

    int-to-float v8, v8

    div-float v30, v4, v8

    int-to-float v3, v3

    iget v4, v7, Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;->height:I

    int-to-float v4, v4

    div-float v27, v3, v4

    int-to-float v2, v2

    div-float v34, v2, v8

    int-to-float v2, v6

    div-float v35, v2, v4

    new-instance v22, Landroidx/media3/common/text/Cue;

    const/16 v23, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v31, 0x0

    const/high16 v32, -0x80000000

    const v33, -0x800001

    const/16 v36, 0x0

    const/high16 v37, -0x1000000

    const/16 v39, 0x0

    move-object/from16 v24, v23

    move-object/from16 v25, v23

    move/from16 v38, v32

    invoke-direct/range {v22 .. v39}, Landroidx/media3/common/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIF)V

    move-object/from16 v14, v18

    move-object/from16 v2, v22

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v3, 0x0

    invoke-virtual {v15, v3, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v15}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v6, v17, 0x1

    move/from16 v8, p2

    move v4, v5

    move-object v2, v7

    move-object v3, v14

    move-object/from16 v7, v21

    move v5, v1

    move-object/from16 v1, v16

    goto/16 :goto_a

    :cond_1a
    move-object v14, v3

    new-instance v9, Landroidx/media3/extractor/text/CuesWithTiming;

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v9 .. v14}, Landroidx/media3/extractor/text/CuesWithTiming;-><init>(JJLjava/util/List;)V

    goto/16 :goto_8

    :goto_13
    invoke-interface {v0, v9}, Landroidx/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final reset()V
    .locals 1

    iget-object p0, p0, Landroidx/media3/extractor/text/dvb/DvbParser;->subtitleService:Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;

    iget-object v0, p0, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->regions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->cluts:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->objects:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->ancillaryCluts:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->ancillaryObjects:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->displayDefinition:Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;

    iput-object v0, p0, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->pageComposition:Landroidx/compose/runtime/OffsetApplier;

    return-void
.end method
