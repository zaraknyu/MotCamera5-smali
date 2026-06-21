.class public abstract Landroidx/compose/ui/graphics/Brush;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final RectangleShape:Lcom/google/mlkit/common/internal/zzc;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/mlkit/common/internal/zzc;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/mlkit/common/internal/zzc;-><init>(I)V

    sput-object v0, Landroidx/compose/ui/graphics/Brush;->RectangleShape:Lcom/google/mlkit/common/internal/zzc;

    return-void
.end method

.method public static final Color(FFFFLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J
    .locals 21

    move-object/from16 v0, p4

    .line 1
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->isSrgb()Z

    move-result v1

    const/16 v2, 0x10

    const/16 v3, 0x20

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-eqz v1, :cond_8

    cmpg-float v0, p3, v6

    if-gez v0, :cond_0

    move v0, v6

    goto :goto_0

    :cond_0
    move/from16 v0, p3

    :goto_0
    cmpl-float v1, v0, v5

    if-lez v1, :cond_1

    move v0, v5

    :cond_1
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    add-float/2addr v0, v4

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    cmpg-float v7, p0, v6

    if-gez v7, :cond_2

    move v7, v6

    goto :goto_1

    :cond_2
    move/from16 v7, p0

    :goto_1
    cmpl-float v8, v7, v5

    if-lez v8, :cond_3

    move v7, v5

    :cond_3
    mul-float/2addr v7, v1

    add-float/2addr v7, v4

    float-to-int v7, v7

    shl-int/lit8 v2, v7, 0x10

    or-int/2addr v0, v2

    cmpg-float v2, p1, v6

    if-gez v2, :cond_4

    move v2, v6

    goto :goto_2

    :cond_4
    move/from16 v2, p1

    :goto_2
    cmpl-float v7, v2, v5

    if-lez v7, :cond_5

    move v2, v5

    :cond_5
    mul-float/2addr v2, v1

    add-float/2addr v2, v4

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    cmpg-float v2, p2, v6

    if-gez v2, :cond_6

    goto :goto_3

    :cond_6
    move/from16 v6, p2

    :goto_3
    cmpl-float v2, v6, v5

    if-lez v2, :cond_7

    goto :goto_4

    :cond_7
    move v5, v6

    :goto_4
    mul-float/2addr v5, v1

    add-float/2addr v5, v4

    float-to-int v1, v5

    or-int/2addr v0, v1

    int-to-long v0, v0

    shl-long/2addr v0, v3

    .line 2
    sget v2, Landroidx/compose/ui/graphics/Color;->$r8$clinit:I

    return-wide v0

    .line 3
    :cond_8
    iget-wide v7, v0, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->model:J

    sget v1, Landroidx/compose/ui/graphics/colorspace/ColorModel;->$r8$clinit:I

    shr-long/2addr v7, v3

    long-to-int v1, v7

    const/4 v7, 0x3

    if-ne v1, v7, :cond_9

    goto :goto_5

    .line 4
    :cond_9
    const-string v1, "Color only works with ColorSpaces with 3 components"

    .line 5
    invoke-static {v1}, Landroidx/compose/ui/graphics/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 6
    :goto_5
    iget v1, v0, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->id:I

    const/4 v7, -0x1

    if-eq v1, v7, :cond_a

    goto :goto_6

    .line 7
    :cond_a
    const-string v7, "Unknown color space, please use a color space in ColorSpaces"

    .line 8
    invoke-static {v7}, Landroidx/compose/ui/graphics/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :goto_6
    const/4 v7, 0x0

    .line 9
    invoke-virtual {v0, v7}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->getMinValue(I)F

    move-result v8

    invoke-virtual {v0, v7}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->getMaxValue(I)F

    move-result v9

    cmpg-float v10, p0, v8

    if-gez v10, :cond_b

    goto :goto_7

    :cond_b
    move/from16 v8, p0

    :goto_7
    cmpl-float v10, v8, v9

    if-lez v10, :cond_c

    goto :goto_8

    :cond_c
    move v9, v8

    .line 10
    :goto_8
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    ushr-int/lit8 v9, v8, 0x1f

    ushr-int/lit8 v10, v8, 0x17

    const/16 v11, 0xff

    and-int/2addr v10, v11

    const v12, 0x7fffff

    and-int v13, v8, v12

    const/high16 v14, 0x800000

    const/16 v15, -0xa

    const/16 v16, 0x31

    const/16 v17, 0x200

    move/from16 v18, v2

    const/16 v2, 0x1f

    move/from16 v19, v3

    const/4 v3, 0x1

    if-ne v10, v11, :cond_e

    if-eqz v13, :cond_d

    move/from16 v8, v17

    goto :goto_9

    :cond_d
    move v8, v7

    :goto_9
    move v10, v2

    goto :goto_b

    :cond_e
    add-int/lit8 v10, v10, -0x70

    if-lt v10, v2, :cond_f

    move v8, v7

    move/from16 v10, v16

    goto :goto_b

    :cond_f
    if-gtz v10, :cond_12

    if-lt v10, v15, :cond_11

    or-int v8, v13, v14

    rsub-int/lit8 v10, v10, 0x1

    shr-int/2addr v8, v10

    and-int/lit16 v10, v8, 0x1000

    if-eqz v10, :cond_10

    add-int/lit16 v8, v8, 0x2000

    :cond_10
    shr-int/lit8 v8, v8, 0xd

    move v10, v7

    goto :goto_b

    :cond_11
    move v8, v7

    move v10, v8

    goto :goto_b

    :cond_12
    shr-int/lit8 v13, v13, 0xd

    and-int/lit16 v8, v8, 0x1000

    if-eqz v8, :cond_13

    shl-int/lit8 v8, v10, 0xa

    or-int/2addr v8, v13

    add-int/2addr v8, v3

    shl-int/lit8 v9, v9, 0xf

    or-int/2addr v8, v9

    :goto_a
    int-to-short v8, v8

    goto :goto_c

    :cond_13
    move v8, v13

    :goto_b
    shl-int/lit8 v9, v9, 0xf

    shl-int/lit8 v10, v10, 0xa

    or-int/2addr v9, v10

    or-int/2addr v8, v9

    goto :goto_a

    .line 11
    :goto_c
    invoke-virtual {v0, v3}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->getMinValue(I)F

    move-result v9

    invoke-virtual {v0, v3}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->getMaxValue(I)F

    move-result v10

    cmpg-float v13, p1, v9

    if-gez v13, :cond_14

    goto :goto_d

    :cond_14
    move/from16 v9, p1

    :goto_d
    cmpl-float v13, v9, v10

    if-lez v13, :cond_15

    goto :goto_e

    :cond_15
    move v10, v9

    .line 12
    :goto_e
    invoke-static {v10}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v9

    ushr-int/lit8 v10, v9, 0x1f

    ushr-int/lit8 v13, v9, 0x17

    and-int/2addr v13, v11

    and-int v20, v9, v12

    if-ne v13, v11, :cond_17

    if-eqz v20, :cond_16

    move/from16 v9, v17

    goto :goto_f

    :cond_16
    move v9, v7

    :goto_f
    move v13, v2

    goto :goto_11

    :cond_17
    add-int/lit8 v13, v13, -0x70

    if-lt v13, v2, :cond_18

    move v9, v7

    move/from16 v13, v16

    goto :goto_11

    :cond_18
    if-gtz v13, :cond_1b

    if-lt v13, v15, :cond_1a

    or-int v9, v20, v14

    rsub-int/lit8 v13, v13, 0x1

    shr-int/2addr v9, v13

    and-int/lit16 v13, v9, 0x1000

    if-eqz v13, :cond_19

    add-int/lit16 v9, v9, 0x2000

    :cond_19
    shr-int/lit8 v9, v9, 0xd

    move v13, v7

    goto :goto_11

    :cond_1a
    move v9, v7

    move v13, v9

    goto :goto_11

    :cond_1b
    shr-int/lit8 v20, v20, 0xd

    and-int/lit16 v9, v9, 0x1000

    if-eqz v9, :cond_1c

    shl-int/lit8 v9, v13, 0xa

    or-int v9, v9, v20

    add-int/2addr v9, v3

    shl-int/lit8 v10, v10, 0xf

    or-int/2addr v9, v10

    :goto_10
    int-to-short v9, v9

    goto :goto_12

    :cond_1c
    move/from16 v9, v20

    :goto_11
    shl-int/lit8 v10, v10, 0xf

    shl-int/lit8 v13, v13, 0xa

    or-int/2addr v10, v13

    or-int/2addr v9, v10

    goto :goto_10

    :goto_12
    const/4 v10, 0x2

    .line 13
    invoke-virtual {v0, v10}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->getMinValue(I)F

    move-result v13

    invoke-virtual {v0, v10}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->getMaxValue(I)F

    move-result v0

    cmpg-float v10, p2, v13

    if-gez v10, :cond_1d

    goto :goto_13

    :cond_1d
    move/from16 v13, p2

    :goto_13
    cmpl-float v10, v13, v0

    if-lez v10, :cond_1e

    goto :goto_14

    :cond_1e
    move v0, v13

    .line 14
    :goto_14
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    ushr-int/lit8 v10, v0, 0x1f

    ushr-int/lit8 v13, v0, 0x17

    and-int/2addr v13, v11

    and-int/2addr v12, v0

    if-ne v13, v11, :cond_20

    if-eqz v12, :cond_1f

    move/from16 v7, v17

    :cond_1f
    move v0, v7

    move v7, v2

    goto :goto_16

    :cond_20
    add-int/lit8 v13, v13, -0x70

    if-lt v13, v2, :cond_21

    move v0, v7

    move/from16 v7, v16

    goto :goto_16

    :cond_21
    if-gtz v13, :cond_24

    if-lt v13, v15, :cond_23

    or-int v0, v12, v14

    rsub-int/lit8 v2, v13, 0x1

    shr-int/2addr v0, v2

    and-int/lit16 v2, v0, 0x1000

    if-eqz v2, :cond_22

    add-int/lit16 v0, v0, 0x2000

    :cond_22
    shr-int/lit8 v0, v0, 0xd

    goto :goto_16

    :cond_23
    move v0, v7

    goto :goto_16

    :cond_24
    shr-int/lit8 v7, v12, 0xd

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_25

    shl-int/lit8 v0, v13, 0xa

    or-int/2addr v0, v7

    add-int/2addr v0, v3

    shl-int/lit8 v2, v10, 0xf

    or-int/2addr v0, v2

    :goto_15
    int-to-short v0, v0

    goto :goto_17

    :cond_25
    move v0, v7

    move v7, v13

    :goto_16
    shl-int/lit8 v2, v10, 0xf

    shl-int/lit8 v3, v7, 0xa

    or-int/2addr v2, v3

    or-int/2addr v0, v2

    goto :goto_15

    :goto_17
    cmpg-float v2, p3, v6

    if-gez v2, :cond_26

    goto :goto_18

    :cond_26
    move/from16 v6, p3

    :goto_18
    cmpl-float v2, v6, v5

    if-lez v2, :cond_27

    goto :goto_19

    :cond_27
    move v5, v6

    :goto_19
    const v2, 0x447fc000    # 1023.0f

    mul-float/2addr v5, v2

    add-float/2addr v5, v4

    float-to-int v2, v5

    int-to-long v3, v8

    const-wide/32 v5, 0xffff

    and-long/2addr v3, v5

    const/16 v7, 0x30

    shl-long/2addr v3, v7

    int-to-long v7, v9

    and-long/2addr v7, v5

    shl-long v7, v7, v19

    or-long/2addr v3, v7

    int-to-long v7, v0

    and-long/2addr v5, v7

    shl-long v5, v5, v18

    or-long/2addr v3, v5

    int-to-long v5, v2

    const-wide/16 v7, 0x3ff

    and-long/2addr v5, v7

    const/4 v0, 0x6

    shl-long/2addr v5, v0

    or-long v2, v3, v5

    int-to-long v0, v1

    const-wide/16 v4, 0x3f

    and-long/2addr v0, v4

    or-long/2addr v0, v2

    .line 15
    sget v2, Landroidx/compose/ui/graphics/Color;->$r8$clinit:I

    return-wide v0
.end method

.method public static final Color(I)J
    .locals 2

    int-to-long v0, p0

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    .line 16
    sget p0, Landroidx/compose/ui/graphics/Color;->$r8$clinit:I

    return-wide v0
.end method

.method public static final Color(J)J
    .locals 1

    const/16 v0, 0x20

    shl-long/2addr p0, v0

    .line 17
    sget v0, Landroidx/compose/ui/graphics/Color;->$r8$clinit:I

    return-wide p0
.end method

.method public static Color$default(III)J
    .locals 1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x10

    const/high16 v0, -0x1000000

    or-int/2addr p0, v0

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    and-int/lit16 p1, p2, 0xff

    or-int/2addr p0, p1

    invoke-static {p0}, Landroidx/compose/ui/graphics/Brush;->Color(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static ImageBitmap-x__-hDU$default(III)Landroidx/compose/ui/graphics/AndroidImageBitmap;
    .locals 24

    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Srgb:Landroidx/compose/ui/graphics/colorspace/Rgb;

    invoke-static/range {p2 .. p2}, Landroidx/compose/ui/graphics/Brush;->toBitmapConfig-1JJdX4A(I)Landroid/graphics/Bitmap$Config;

    invoke-static/range {p2 .. p2}, Landroidx/compose/ui/graphics/Brush;->toBitmapConfig-1JJdX4A(I)Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-static {v0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    :goto_0
    move-object v6, v0

    goto/16 :goto_3

    :cond_0
    sget-object v1, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Aces:Landroidx/compose/ui/graphics/colorspace/Rgb;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Landroid/graphics/ColorSpace$Named;->ACES:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v1, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Acescg:Landroidx/compose/ui/graphics/colorspace/Rgb;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Landroid/graphics/ColorSpace$Named;->ACESCG:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v1, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->AdobeRgb:Landroidx/compose/ui/graphics/colorspace/Rgb;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Landroid/graphics/ColorSpace$Named;->ADOBE_RGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    goto :goto_0

    :cond_3
    sget-object v1, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Bt2020:Landroidx/compose/ui/graphics/colorspace/Rgb;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v0, Landroid/graphics/ColorSpace$Named;->BT2020:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    goto :goto_0

    :cond_4
    sget-object v1, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Bt709:Landroidx/compose/ui/graphics/colorspace/Rgb;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v0, Landroid/graphics/ColorSpace$Named;->BT709:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    goto :goto_0

    :cond_5
    sget-object v1, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->CieLab:Landroidx/compose/ui/graphics/colorspace/Lab;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v0, Landroid/graphics/ColorSpace$Named;->CIE_LAB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    goto :goto_0

    :cond_6
    sget-object v1, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->CieXyz:Landroidx/compose/ui/graphics/colorspace/Lab;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v0, Landroid/graphics/ColorSpace$Named;->CIE_XYZ:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    goto :goto_0

    :cond_7
    sget-object v1, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->DciP3:Landroidx/compose/ui/graphics/colorspace/Rgb;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v0, Landroid/graphics/ColorSpace$Named;->DCI_P3:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    goto :goto_0

    :cond_8
    sget-object v1, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->DisplayP3:Landroidx/compose/ui/graphics/colorspace/Rgb;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v0, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    sget-object v1, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->ExtendedSrgb:Landroidx/compose/ui/graphics/colorspace/Rgb;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v0, Landroid/graphics/ColorSpace$Named;->EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    sget-object v1, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->LinearExtendedSrgb:Landroidx/compose/ui/graphics/colorspace/Rgb;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v0, Landroid/graphics/ColorSpace$Named;->LINEAR_EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    sget-object v1, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->LinearSrgb:Landroidx/compose/ui/graphics/colorspace/Rgb;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    sget-object v0, Landroid/graphics/ColorSpace$Named;->LINEAR_SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    goto/16 :goto_0

    :cond_c
    sget-object v1, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Ntsc1953:Landroidx/compose/ui/graphics/colorspace/Rgb;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    sget-object v0, Landroid/graphics/ColorSpace$Named;->NTSC_1953:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    goto/16 :goto_0

    :cond_d
    sget-object v1, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->ProPhotoRgb:Landroidx/compose/ui/graphics/colorspace/Rgb;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v0, Landroid/graphics/ColorSpace$Named;->PRO_PHOTO_RGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    goto/16 :goto_0

    :cond_e
    sget-object v1, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->SmpteC:Landroidx/compose/ui/graphics/colorspace/Rgb;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    sget-object v0, Landroid/graphics/ColorSpace$Named;->SMPTE_C:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    goto/16 :goto_0

    :cond_f
    sget-object v1, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Bt2020Hlg:Landroidx/compose/ui/graphics/colorspace/Rgb;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    sget-object v1, Landroid/graphics/ColorSpace$Named;->BT2020_HLG:Landroid/graphics/ColorSpace$Named;

    invoke-static {v1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v1

    goto :goto_1

    :cond_10
    sget-object v1, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Bt2020Pq:Landroidx/compose/ui/graphics/colorspace/Rgb;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    sget-object v1, Landroid/graphics/ColorSpace$Named;->BT2020_PQ:Landroid/graphics/ColorSpace$Named;

    invoke-static {v1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v1

    goto :goto_1

    :cond_11
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_12

    :goto_2
    move-object v6, v1

    goto :goto_3

    :cond_12
    if-eqz v0, :cond_15

    iget-object v1, v0, Landroidx/compose/ui/graphics/colorspace/Rgb;->whitePoint:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;->toXyz$ui_graphics_release()[F

    move-result-object v8

    iget-object v1, v0, Landroidx/compose/ui/graphics/colorspace/Rgb;->transferParameters:Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    if-eqz v1, :cond_13

    new-instance v9, Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    iget-wide v10, v1, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->a:D

    iget-wide v12, v1, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->b:D

    iget-wide v14, v1, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->c:D

    iget-wide v2, v1, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->d:D

    iget-wide v5, v1, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->e:D

    move-wide/from16 v16, v2

    iget-wide v2, v1, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->f:D

    move-wide/from16 v20, v2

    iget-wide v1, v1, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->gamma:D

    move-wide/from16 v22, v1

    move-wide/from16 v18, v5

    invoke-direct/range {v9 .. v23}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;-><init>(DDDDDDD)V

    move-object v2, v9

    :cond_13
    if-eqz v2, :cond_14

    new-instance v1, Landroid/graphics/ColorSpace$Rgb;

    iget-object v3, v0, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->name:Ljava/lang/String;

    iget-object v0, v0, Landroidx/compose/ui/graphics/colorspace/Rgb;->primaries:[F

    invoke-direct {v1, v3, v0, v8, v2}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;)V

    goto :goto_2

    :cond_14
    new-instance v5, Landroid/graphics/ColorSpace$Rgb;

    iget-object v6, v0, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->name:Ljava/lang/String;

    iget-object v7, v0, Landroidx/compose/ui/graphics/colorspace/Rgb;->primaries:[F

    iget-object v1, v0, Landroidx/compose/ui/graphics/colorspace/Rgb;->oetf:Landroidx/compose/ui/graphics/colorspace/Rgb$eotf$1;

    new-instance v9, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v9, v1, v2}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    iget-object v1, v0, Landroidx/compose/ui/graphics/colorspace/Rgb;->eotf:Landroidx/compose/ui/graphics/colorspace/Rgb$eotf$1;

    new-instance v10, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v10, v1, v2}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    iget v11, v0, Landroidx/compose/ui/graphics/colorspace/Rgb;->min:F

    iget v12, v0, Landroidx/compose/ui/graphics/colorspace/Rgb;->max:F

    invoke-direct/range {v5 .. v12}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FF)V

    move-object v6, v5

    goto :goto_3

    :cond_15
    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    goto/16 :goto_0

    :goto_3
    const/4 v1, 0x0

    const/4 v5, 0x1

    move/from16 v2, p0

    move/from16 v3, p1

    invoke-static/range {v1 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;ZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroidx/compose/ui/graphics/AndroidImageBitmap;

    invoke-direct {v1, v0}, Landroidx/compose/ui/graphics/AndroidImageBitmap;-><init>(Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method public static final Paint()Landroidx/compose/ui/graphics/AndroidPaint;
    .locals 3

    new-instance v0, Landroidx/compose/ui/graphics/AndroidPaint;

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/AndroidPaint;-><init>(Landroid/graphics/Paint;)V

    return-object v0
.end method

.method public static final TransformOrigin(FF)J
    .locals 4

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v0, p0

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    sget v0, Landroidx/compose/ui/graphics/TransformOrigin;->$r8$clinit:I

    return-wide p0
.end method

.method public static final asAndroidBitmap(Landroidx/compose/ui/graphics/AndroidImageBitmap;)Landroid/graphics/Bitmap;
    .locals 1

    instance-of v0, p0, Landroidx/compose/ui/graphics/AndroidImageBitmap;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/compose/ui/graphics/AndroidImageBitmap;->bitmap:Landroid/graphics/Bitmap;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Unable to obtain android.graphics.Bitmap"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final compositeOver--OWjLjI(JJ)J
    .locals 19

    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/graphics/Color;->getColorSpace-impl(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    move-result-object v0

    move-wide/from16 v1, p0

    invoke-static {v1, v2, v0}, Landroidx/compose/ui/graphics/Color;->convert-vNxB06k(JLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    move-result-wide v0

    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/graphics/Color;->getAlpha-impl(J)F

    move-result v2

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->getAlpha-impl(J)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v5, v4, v3

    mul-float v6, v2, v5

    add-float/2addr v6, v3

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->getRed-impl(J)F

    move-result v7

    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/graphics/Color;->getRed-impl(J)F

    move-result v8

    const/4 v9, 0x0

    cmpg-float v10, v6, v9

    if-nez v10, :cond_0

    move v8, v9

    goto :goto_0

    :cond_0
    mul-float/2addr v7, v3

    mul-float/2addr v8, v2

    mul-float/2addr v8, v5

    add-float/2addr v8, v7

    div-float/2addr v8, v6

    :goto_0
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->getGreen-impl(J)F

    move-result v7

    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/graphics/Color;->getGreen-impl(J)F

    move-result v11

    if-nez v10, :cond_1

    move v11, v9

    goto :goto_1

    :cond_1
    mul-float/2addr v7, v3

    mul-float/2addr v11, v2

    mul-float/2addr v11, v5

    add-float/2addr v11, v7

    div-float/2addr v11, v6

    :goto_1
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->getBlue-impl(J)F

    move-result v0

    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/graphics/Color;->getBlue-impl(J)F

    move-result v1

    if-nez v10, :cond_2

    move v1, v9

    goto :goto_2

    :cond_2
    mul-float/2addr v0, v3

    mul-float/2addr v1, v2

    mul-float/2addr v1, v5

    add-float/2addr v1, v0

    div-float/2addr v1, v6

    :goto_2
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/graphics/Color;->getColorSpace-impl(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->isSrgb()Z

    move-result v2

    const/16 v3, 0x20

    const/16 v5, 0x10

    const/high16 v7, 0x3f000000    # 0.5f

    if-eqz v2, :cond_3

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v6, v0

    add-float/2addr v6, v7

    float-to-int v2, v6

    shl-int/lit8 v2, v2, 0x18

    mul-float/2addr v8, v0

    add-float/2addr v8, v7

    float-to-int v4, v8

    shl-int/2addr v4, v5

    or-int/2addr v2, v4

    mul-float/2addr v11, v0

    add-float/2addr v11, v7

    float-to-int v4, v11

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    mul-float/2addr v1, v0

    add-float/2addr v1, v7

    float-to-int v0, v1

    or-int/2addr v0, v2

    int-to-long v0, v0

    shl-long/2addr v0, v3

    return-wide v0

    :cond_3
    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    ushr-int/lit8 v8, v2, 0x1f

    ushr-int/lit8 v10, v2, 0x17

    const/16 v12, 0xff

    and-int/2addr v10, v12

    const v13, 0x7fffff

    and-int v14, v2, v13

    const/high16 v15, 0x800000

    move/from16 p0, v3

    const/16 v3, -0xa

    const/16 v16, 0x31

    const/16 v17, 0x200

    const/16 v18, 0x0

    move/from16 p1, v5

    const/16 v5, 0x1f

    if-ne v10, v12, :cond_5

    if-eqz v14, :cond_4

    move/from16 v2, v17

    goto :goto_3

    :cond_4
    move/from16 v2, v18

    :goto_3
    move v10, v5

    goto :goto_5

    :cond_5
    add-int/lit8 v10, v10, -0x70

    if-lt v10, v5, :cond_6

    move/from16 v10, v16

    move/from16 v2, v18

    goto :goto_5

    :cond_6
    if-gtz v10, :cond_9

    if-lt v10, v3, :cond_8

    or-int v2, v14, v15

    rsub-int/lit8 v10, v10, 0x1

    shr-int/2addr v2, v10

    and-int/lit16 v10, v2, 0x1000

    if-eqz v10, :cond_7

    add-int/lit16 v2, v2, 0x2000

    :cond_7
    shr-int/lit8 v2, v2, 0xd

    move/from16 v10, v18

    goto :goto_5

    :cond_8
    move/from16 v2, v18

    move v10, v2

    goto :goto_5

    :cond_9
    shr-int/lit8 v14, v14, 0xd

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_a

    shl-int/lit8 v2, v10, 0xa

    or-int/2addr v2, v14

    add-int/lit8 v2, v2, 0x1

    shl-int/lit8 v8, v8, 0xf

    or-int/2addr v2, v8

    :goto_4
    int-to-short v2, v2

    goto :goto_6

    :cond_a
    move v2, v14

    :goto_5
    shl-int/lit8 v8, v8, 0xf

    shl-int/lit8 v10, v10, 0xa

    or-int/2addr v8, v10

    or-int/2addr v2, v8

    goto :goto_4

    :goto_6
    invoke-static {v11}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    ushr-int/lit8 v10, v8, 0x1f

    ushr-int/lit8 v11, v8, 0x17

    and-int/2addr v11, v12

    and-int v14, v8, v13

    if-ne v11, v12, :cond_c

    if-eqz v14, :cond_b

    move/from16 v8, v17

    goto :goto_7

    :cond_b
    move/from16 v8, v18

    :goto_7
    move v11, v5

    goto :goto_9

    :cond_c
    add-int/lit8 v11, v11, -0x70

    if-lt v11, v5, :cond_d

    move/from16 v11, v16

    move/from16 v8, v18

    goto :goto_9

    :cond_d
    if-gtz v11, :cond_10

    if-lt v11, v3, :cond_f

    or-int v8, v14, v15

    rsub-int/lit8 v11, v11, 0x1

    shr-int/2addr v8, v11

    and-int/lit16 v11, v8, 0x1000

    if-eqz v11, :cond_e

    add-int/lit16 v8, v8, 0x2000

    :cond_e
    shr-int/lit8 v8, v8, 0xd

    move/from16 v11, v18

    goto :goto_9

    :cond_f
    move/from16 v8, v18

    move v11, v8

    goto :goto_9

    :cond_10
    shr-int/lit8 v14, v14, 0xd

    and-int/lit16 v8, v8, 0x1000

    if-eqz v8, :cond_11

    shl-int/lit8 v8, v11, 0xa

    or-int/2addr v8, v14

    add-int/lit8 v8, v8, 0x1

    shl-int/lit8 v10, v10, 0xf

    or-int/2addr v8, v10

    :goto_8
    int-to-short v8, v8

    goto :goto_a

    :cond_11
    move v8, v14

    :goto_9
    shl-int/lit8 v10, v10, 0xf

    shl-int/lit8 v11, v11, 0xa

    or-int/2addr v10, v11

    or-int/2addr v8, v10

    goto :goto_8

    :goto_a
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    ushr-int/lit8 v10, v1, 0x1f

    ushr-int/lit8 v11, v1, 0x17

    and-int/2addr v11, v12

    and-int/2addr v13, v1

    if-ne v11, v12, :cond_13

    if-eqz v13, :cond_12

    goto :goto_b

    :cond_12
    move/from16 v17, v18

    :goto_b
    move/from16 v16, v5

    move/from16 v18, v17

    goto :goto_d

    :cond_13
    add-int/lit8 v11, v11, -0x70

    if-lt v11, v5, :cond_14

    goto :goto_d

    :cond_14
    if-gtz v11, :cond_17

    if-lt v11, v3, :cond_16

    or-int v1, v13, v15

    rsub-int/lit8 v3, v11, 0x1

    shr-int/2addr v1, v3

    and-int/lit16 v3, v1, 0x1000

    if-eqz v3, :cond_15

    add-int/lit16 v1, v1, 0x2000

    :cond_15
    shr-int/lit8 v1, v1, 0xd

    move/from16 v16, v18

    move/from16 v18, v1

    goto :goto_d

    :cond_16
    move/from16 v16, v18

    goto :goto_d

    :cond_17
    shr-int/lit8 v18, v13, 0xd

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_18

    shl-int/lit8 v1, v11, 0xa

    or-int v1, v1, v18

    add-int/lit8 v1, v1, 0x1

    shl-int/lit8 v3, v10, 0xf

    or-int/2addr v1, v3

    :goto_c
    int-to-short v1, v1

    goto :goto_e

    :cond_18
    move/from16 v16, v11

    :goto_d
    shl-int/lit8 v1, v10, 0xf

    shl-int/lit8 v3, v16, 0xa

    or-int/2addr v1, v3

    or-int v1, v1, v18

    goto :goto_c

    :goto_e
    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v9, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const v4, 0x447fc000    # 1023.0f

    mul-float/2addr v3, v4

    add-float/2addr v3, v7

    float-to-int v3, v3

    iget v0, v0, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->id:I

    int-to-long v4, v2

    const-wide/32 v6, 0xffff

    and-long/2addr v4, v6

    const/16 v2, 0x30

    shl-long/2addr v4, v2

    int-to-long v8, v8

    and-long/2addr v8, v6

    shl-long v8, v8, p0

    or-long/2addr v4, v8

    int-to-long v1, v1

    and-long/2addr v1, v6

    shl-long v1, v1, p1

    or-long/2addr v1, v4

    int-to-long v3, v3

    const-wide/16 v5, 0x3ff

    and-long/2addr v3, v5

    const/4 v5, 0x6

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    int-to-long v3, v0

    const-wide/16 v5, 0x3f

    and-long/2addr v3, v5

    or-long v0, v1, v3

    return-wide v0
.end method

.method public static constructor-impl$default()[F
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static final graphicsLayer(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;
    .locals 1

    new-instance v0, Landroidx/compose/ui/graphics/BlockGraphicsLayerElement;

    invoke-direct {v0, p1}, Landroidx/compose/ui/graphics/BlockGraphicsLayerElement;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static graphicsLayer-Ap8cVGQ$default(Landroidx/compose/ui/Modifier;FFFFFLandroidx/compose/ui/graphics/Shape;ZI)Landroidx/compose/ui/Modifier;
    .locals 17

    move/from16 v0, p8

    and-int/lit8 v1, v0, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move/from16 v4, p1

    :goto_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move/from16 v5, p2

    :goto_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    move v6, v2

    goto :goto_2

    :cond_2
    move/from16 v6, p3

    :goto_2
    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    move v7, v2

    goto :goto_3

    :cond_3
    move/from16 v7, p4

    :goto_3
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_4

    move v8, v2

    goto :goto_4

    :cond_4
    move/from16 v8, p5

    :goto_4
    sget-wide v9, Landroidx/compose/ui/graphics/TransformOrigin;->Center:J

    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_5

    sget-object v1, Landroidx/compose/ui/graphics/Brush;->RectangleShape:Lcom/google/mlkit/common/internal/zzc;

    move-object v11, v1

    goto :goto_5

    :cond_5
    move-object/from16 v11, p6

    :goto_5
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    move v12, v0

    goto :goto_6

    :cond_6
    move/from16 v12, p7

    :goto_6
    sget-wide v13, Landroidx/compose/ui/graphics/GraphicsLayerScopeKt;->DefaultShadowColor:J

    new-instance v3, Landroidx/compose/ui/graphics/GraphicsLayerElement;

    move-wide v15, v13

    invoke-direct/range {v3 .. v16}, Landroidx/compose/ui/graphics/GraphicsLayerElement;-><init>(FFFFFJLandroidx/compose/ui/graphics/Shape;ZJJ)V

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    return-object v0
.end method

.method public static final isIdentity-58bKbWc([F)Z
    .locals 5

    array-length v0, p0

    const/16 v1, 0x10

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    aget v0, p0, v2

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    aget v3, p0, v0

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-nez v3, :cond_1

    const/4 v3, 0x2

    aget v3, p0, v3

    cmpg-float v3, v3, v4

    if-nez v3, :cond_1

    const/4 v3, 0x3

    aget v3, p0, v3

    cmpg-float v3, v3, v4

    if-nez v3, :cond_1

    const/4 v3, 0x4

    aget v3, p0, v3

    cmpg-float v3, v3, v4

    if-nez v3, :cond_1

    const/4 v3, 0x5

    aget v3, p0, v3

    cmpg-float v3, v3, v1

    if-nez v3, :cond_1

    const/4 v3, 0x6

    aget v3, p0, v3

    cmpg-float v3, v3, v4

    if-nez v3, :cond_1

    const/4 v3, 0x7

    aget v3, p0, v3

    cmpg-float v3, v3, v4

    if-nez v3, :cond_1

    const/16 v3, 0x8

    aget v3, p0, v3

    cmpg-float v3, v3, v4

    if-nez v3, :cond_1

    const/16 v3, 0x9

    aget v3, p0, v3

    cmpg-float v3, v3, v4

    if-nez v3, :cond_1

    const/16 v3, 0xa

    aget v3, p0, v3

    cmpg-float v3, v3, v1

    if-nez v3, :cond_1

    const/16 v3, 0xb

    aget v3, p0, v3

    cmpg-float v3, v3, v4

    if-nez v3, :cond_1

    const/16 v3, 0xc

    aget v3, p0, v3

    cmpg-float v3, v3, v4

    if-nez v3, :cond_1

    const/16 v3, 0xd

    aget v3, p0, v3

    cmpg-float v3, v3, v4

    if-nez v3, :cond_1

    const/16 v3, 0xe

    aget v3, p0, v3

    cmpg-float v3, v3, v4

    if-nez v3, :cond_1

    const/16 v3, 0xf

    aget p0, p0, v3

    cmpg-float p0, p0, v1

    if-nez p0, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public static final luminance-8_81llA(J)F
    .locals 7

    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->getColorSpace-impl(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    move-result-object v0

    iget-wide v1, v0, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->model:J

    sget-wide v3, Landroidx/compose/ui/graphics/colorspace/ColorModel;->Rgb:J

    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/graphics/colorspace/ColorModel;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The specified color must be encoded in an RGB color space. The supplied color space is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, v0, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->model:J

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/colorspace/ColorModel;->toString-impl(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/ui/graphics/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_0
    check-cast v0, Landroidx/compose/ui/graphics/colorspace/Rgb;

    iget-object v0, v0, Landroidx/compose/ui/graphics/colorspace/Rgb;->eotfFunc:Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda0;

    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->getRed-impl(J)F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda0;->invoke(D)D

    move-result-wide v1

    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->getGreen-impl(J)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v0, v3, v4}, Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda0;->invoke(D)D

    move-result-wide v3

    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->getBlue-impl(J)F

    move-result p0

    float-to-double p0, p0

    invoke-virtual {v0, p0, p1}, Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda0;->invoke(D)D

    move-result-wide p0

    const-wide v5, 0x3fcb367a0f9096bcL    # 0.2126

    mul-double/2addr v1, v5

    const-wide v5, 0x3fe6e2eb1c432ca5L    # 0.7152

    mul-double/2addr v3, v5

    add-double/2addr v3, v1

    const-wide v0, 0x3fb27bb2fec56d5dL    # 0.0722

    mul-double/2addr p0, v0

    add-double/2addr p0, v3

    double-to-float p0, p0

    const/4 p1, 0x0

    cmpg-float v0, p0, p1

    if-gez v0, :cond_1

    move p0, p1

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float v0, p0, p1

    if-lez v0, :cond_2

    return p1

    :cond_2
    return p0
.end method

.method public static final map-MK-Hz9U(J[F)J
    .locals 13

    array-length v0, p2

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    return-wide p0

    :cond_0
    const/4 v0, 0x0

    aget v0, p2, v0

    const/4 v1, 0x1

    aget v2, p2, v1

    const/4 v3, 0x3

    aget v3, p2, v3

    const/4 v4, 0x4

    aget v4, p2, v4

    const/4 v5, 0x5

    aget v5, p2, v5

    const/4 v6, 0x7

    aget v6, p2, v6

    const/16 v7, 0xc

    aget v7, p2, v7

    const/16 v8, 0xd

    aget v8, p2, v8

    const/16 v9, 0xf

    aget p2, p2, v9

    const/16 v9, 0x20

    shr-long v10, p0, v9

    long-to-int v10, v10

    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    const-wide v11, 0xffffffffL

    and-long/2addr p0, v11

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    mul-float/2addr v3, v10

    mul-float/2addr v6, p0

    add-float/2addr v6, v3

    add-float/2addr v6, p2

    int-to-float p1, v1

    div-float/2addr p1, v6

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    const v1, 0x7fffffff

    and-int/2addr p2, v1

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    if-ge p2, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    mul-float/2addr v0, v10

    mul-float/2addr v4, p0

    add-float/2addr v4, v0

    add-float/2addr v4, v7

    mul-float/2addr v4, p1

    mul-float/2addr v2, v10

    mul-float/2addr v5, p0

    add-float/2addr v5, v2

    add-float/2addr v5, v8

    mul-float/2addr v5, p1

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p0, p0

    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    int-to-long v0, p2

    shl-long/2addr p0, v9

    and-long/2addr v0, v11

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static final map-impl([FLandroidx/compose/ui/geometry/MutableRect;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v0

    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x3

    aget v4, v0, v4

    const/4 v5, 0x4

    aget v5, v0, v5

    const/4 v6, 0x5

    aget v6, v0, v6

    const/4 v7, 0x7

    aget v7, v0, v7

    const/16 v8, 0xc

    aget v8, v0, v8

    const/16 v9, 0xd

    aget v9, v0, v9

    const/16 v10, 0xf

    aget v0, v0, v10

    iget v10, v1, Landroidx/compose/ui/geometry/MutableRect;->left:F

    iget v11, v1, Landroidx/compose/ui/geometry/MutableRect;->top:F

    iget v12, v1, Landroidx/compose/ui/geometry/MutableRect;->right:F

    iget v13, v1, Landroidx/compose/ui/geometry/MutableRect;->bottom:F

    mul-float v14, v4, v10

    mul-float v15, v7, v11

    add-float v16, v14, v15

    add-float v16, v16, v0

    const/high16 v17, 0x3f800000    # 1.0f

    div-float v16, v17, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v18

    const v19, 0x7fffffff

    move/from16 p0, v0

    and-int v0, v18, v19

    const/16 v18, 0x0

    move/from16 v20, v2

    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    if-ge v0, v2, :cond_1

    goto :goto_0

    :cond_1
    move/from16 v16, v18

    :goto_0
    mul-float v0, v20, v10

    mul-float v21, v5, v11

    add-float v22, v0, v21

    add-float v22, v22, v8

    mul-float v2, v22, v16

    mul-float/2addr v10, v3

    mul-float/2addr v11, v6

    add-float v22, v10, v11

    add-float v22, v22, v9

    move/from16 v23, v0

    mul-float v0, v22, v16

    mul-float/2addr v7, v13

    add-float/2addr v14, v7

    add-float v14, v14, p0

    div-float v14, v17, v14

    invoke-static {v14}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v16

    move/from16 v22, v3

    and-int v3, v16, v19

    move/from16 v16, v4

    const/high16 v4, 0x7f800000    # Float.POSITIVE_INFINITY

    if-ge v3, v4, :cond_2

    goto :goto_1

    :cond_2
    move/from16 v14, v18

    :goto_1
    mul-float/2addr v5, v13

    add-float v3, v23, v5

    add-float/2addr v3, v8

    mul-float/2addr v3, v14

    mul-float/2addr v6, v13

    add-float/2addr v10, v6

    add-float/2addr v10, v9

    mul-float/2addr v10, v14

    mul-float v4, v16, v12

    add-float/2addr v15, v4

    add-float v15, v15, p0

    div-float v13, v17, v15

    invoke-static {v13}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v14

    and-int v14, v14, v19

    const/high16 v15, 0x7f800000    # Float.POSITIVE_INFINITY

    if-ge v14, v15, :cond_3

    goto :goto_2

    :cond_3
    move/from16 v13, v18

    :goto_2
    mul-float v14, v20, v12

    add-float v21, v14, v21

    add-float v21, v21, v8

    mul-float v15, v21, v13

    mul-float v12, v12, v22

    add-float/2addr v11, v12

    add-float/2addr v11, v9

    mul-float/2addr v11, v13

    add-float/2addr v4, v7

    add-float v4, v4, p0

    div-float v17, v17, v4

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    and-int v4, v4, v19

    const/high16 v7, 0x7f800000    # Float.POSITIVE_INFINITY

    if-ge v4, v7, :cond_4

    move/from16 v18, v17

    :cond_4
    add-float/2addr v14, v5

    add-float/2addr v14, v8

    mul-float v14, v14, v18

    add-float/2addr v12, v6

    add-float/2addr v12, v9

    mul-float v12, v12, v18

    invoke-static {v15, v14}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, v1, Landroidx/compose/ui/geometry/MutableRect;->left:F

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v10, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, v1, Landroidx/compose/ui/geometry/MutableRect;->top:F

    invoke-static {v15, v14}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v1, Landroidx/compose/ui/geometry/MutableRect;->right:F

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v10, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, v1, Landroidx/compose/ui/geometry/MutableRect;->bottom:F

    return-void
.end method

.method public static final reset-impl([F)V
    .locals 3

    array-length v0, p0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, p0, v0

    const/4 v0, 0x1

    const/4 v2, 0x0

    aput v2, p0, v0

    const/4 v0, 0x2

    aput v2, p0, v0

    const/4 v0, 0x3

    aput v2, p0, v0

    const/4 v0, 0x4

    aput v2, p0, v0

    const/4 v0, 0x5

    aput v1, p0, v0

    const/4 v0, 0x6

    aput v2, p0, v0

    const/4 v0, 0x7

    aput v2, p0, v0

    const/16 v0, 0x8

    aput v2, p0, v0

    const/16 v0, 0x9

    aput v2, p0, v0

    const/16 v0, 0xa

    aput v1, p0, v0

    const/16 v0, 0xb

    aput v2, p0, v0

    const/16 v0, 0xc

    aput v2, p0, v0

    const/16 v0, 0xd

    aput v2, p0, v0

    const/16 v0, 0xe

    aput v2, p0, v0

    const/16 v0, 0xf

    aput v1, p0, v0

    return-void
.end method

.method public static final rotateZ-impl([FF)V
    .locals 21

    move-object/from16 v0, p0

    array-length v1, v0

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    return-void

    :cond_0
    move/from16 v1, p1

    float-to-double v1, v1

    const-wide v3, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    const/4 v2, 0x0

    aget v4, v0, v2

    const/4 v5, 0x4

    aget v6, v0, v5

    mul-float v7, v1, v4

    mul-float v8, v3, v6

    add-float/2addr v8, v7

    neg-float v7, v3

    mul-float/2addr v4, v7

    mul-float/2addr v6, v1

    add-float/2addr v6, v4

    const/4 v4, 0x1

    aget v9, v0, v4

    const/4 v10, 0x5

    aget v11, v0, v10

    mul-float v12, v1, v9

    mul-float v13, v3, v11

    add-float/2addr v13, v12

    mul-float/2addr v9, v7

    mul-float/2addr v11, v1

    add-float/2addr v11, v9

    const/4 v9, 0x2

    aget v12, v0, v9

    const/4 v14, 0x6

    aget v15, v0, v14

    mul-float v16, v1, v12

    mul-float v17, v3, v15

    add-float v17, v17, v16

    mul-float/2addr v12, v7

    mul-float/2addr v15, v1

    add-float/2addr v15, v12

    const/4 v12, 0x3

    aget v16, v0, v12

    const/16 v18, 0x7

    aget v19, v0, v18

    mul-float v20, v1, v16

    mul-float v3, v3, v19

    add-float v3, v3, v20

    mul-float v7, v7, v16

    mul-float v1, v1, v19

    add-float/2addr v1, v7

    aput v8, v0, v2

    aput v13, v0, v4

    aput v17, v0, v9

    aput v3, v0, v12

    aput v6, v0, v5

    aput v11, v0, v10

    aput v15, v0, v14

    aput v1, v0, v18

    return-void
.end method

.method public static final scale-impl([FFF)V
    .locals 2

    array-length v0, p0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    aget v1, p0, v0

    mul-float/2addr v1, p1

    aput v1, p0, v0

    const/4 v0, 0x1

    aget v1, p0, v0

    mul-float/2addr v1, p1

    aput v1, p0, v0

    const/4 v0, 0x2

    aget v1, p0, v0

    mul-float/2addr v1, p1

    aput v1, p0, v0

    const/4 v0, 0x3

    aget v1, p0, v0

    mul-float/2addr v1, p1

    aput v1, p0, v0

    const/4 p1, 0x4

    aget v0, p0, p1

    mul-float/2addr v0, p2

    aput v0, p0, p1

    const/4 p1, 0x5

    aget v0, p0, p1

    mul-float/2addr v0, p2

    aput v0, p0, p1

    const/4 p1, 0x6

    aget v0, p0, p1

    mul-float/2addr v0, p2

    aput v0, p0, p1

    const/4 p1, 0x7

    aget v0, p0, p1

    mul-float/2addr v0, p2

    aput v0, p0, p1

    const/16 p1, 0x8

    aget p2, p0, p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p2, v0

    aput p2, p0, p1

    const/16 p1, 0x9

    aget p2, p0, p1

    mul-float/2addr p2, v0

    aput p2, p0, p1

    const/16 p1, 0xa

    aget p2, p0, p1

    mul-float/2addr p2, v0

    aput p2, p0, p1

    const/16 p1, 0xb

    aget p2, p0, p1

    mul-float/2addr p2, v0

    aput p2, p0, p1

    return-void
.end method

.method public static final setFrom-tU-YjHk([FLandroid/graphics/Matrix;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v4, v0, v3

    const/4 v5, 0x2

    aget v6, v0, v5

    const/4 v7, 0x3

    aget v8, v0, v7

    const/4 v9, 0x4

    aget v10, v0, v9

    const/4 v11, 0x5

    aget v12, v0, v11

    const/4 v13, 0x6

    aget v14, v0, v13

    const/4 v15, 0x7

    aget v16, v0, v15

    const/16 v17, 0x8

    aget v18, v0, v17

    aput v2, v0, v1

    aput v8, v0, v3

    const/4 v1, 0x0

    aput v1, v0, v5

    aput v14, v0, v7

    aput v4, v0, v9

    aput v10, v0, v11

    aput v1, v0, v13

    aput v16, v0, v15

    aput v1, v0, v17

    const/16 v2, 0x9

    aput v1, v0, v2

    const/16 v2, 0xa

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v0, v2

    const/16 v2, 0xb

    aput v1, v0, v2

    const/16 v2, 0xc

    aput v6, v0, v2

    const/16 v2, 0xd

    aput v12, v0, v2

    const/16 v2, 0xe

    aput v1, v0, v2

    const/16 v1, 0xf

    aput v18, v0, v1

    return-void
.end method

.method public static final timesAssign-58bKbWc([F[F)V
    .locals 49

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v0

    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    goto :goto_0

    :cond_0
    array-length v2, v1

    if-ge v2, v3, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    aget v3, v0, v2

    aget v4, v1, v2

    mul-float v5, v3, v4

    const/4 v6, 0x1

    aget v7, v0, v6

    const/4 v8, 0x4

    aget v9, v1, v8

    mul-float v10, v7, v9

    add-float/2addr v10, v5

    const/4 v5, 0x2

    aget v11, v0, v5

    const/16 v12, 0x8

    aget v13, v1, v12

    mul-float v14, v11, v13

    add-float/2addr v14, v10

    const/4 v10, 0x3

    aget v15, v0, v10

    const/16 v16, 0xc

    aget v17, v1, v16

    mul-float v18, v15, v17

    add-float v18, v18, v14

    aget v14, v1, v6

    mul-float v19, v3, v14

    const/16 v20, 0x5

    aget v21, v1, v20

    mul-float v22, v7, v21

    add-float v22, v22, v19

    const/16 v19, 0x9

    aget v23, v1, v19

    mul-float v24, v11, v23

    add-float v24, v24, v22

    const/16 v22, 0xd

    aget v25, v1, v22

    mul-float v26, v15, v25

    add-float v26, v26, v24

    aget v24, v1, v5

    mul-float v27, v3, v24

    const/16 v28, 0x6

    aget v29, v1, v28

    mul-float v30, v7, v29

    add-float v30, v30, v27

    const/16 v27, 0xa

    aget v31, v1, v27

    mul-float v32, v11, v31

    add-float v32, v32, v30

    const/16 v30, 0xe

    aget v33, v1, v30

    mul-float v34, v15, v33

    add-float v34, v34, v32

    aget v32, v1, v10

    mul-float v3, v3, v32

    const/16 v35, 0x7

    aget v36, v1, v35

    mul-float v7, v7, v36

    add-float/2addr v7, v3

    const/16 v3, 0xb

    aget v37, v1, v3

    mul-float v11, v11, v37

    add-float/2addr v11, v7

    const/16 v7, 0xf

    aget v1, v1, v7

    mul-float/2addr v15, v1

    add-float/2addr v15, v11

    aget v11, v0, v8

    mul-float v38, v11, v4

    aget v39, v0, v20

    mul-float v40, v39, v9

    add-float v40, v40, v38

    aget v38, v0, v28

    mul-float v41, v38, v13

    add-float v41, v41, v40

    aget v40, v0, v35

    mul-float v42, v40, v17

    add-float v42, v42, v41

    mul-float v41, v11, v14

    mul-float v43, v39, v21

    add-float v43, v43, v41

    mul-float v41, v38, v23

    add-float v41, v41, v43

    mul-float v43, v40, v25

    add-float v43, v43, v41

    mul-float v41, v11, v24

    mul-float v44, v39, v29

    add-float v44, v44, v41

    mul-float v41, v38, v31

    add-float v41, v41, v44

    mul-float v44, v40, v33

    add-float v44, v44, v41

    mul-float v11, v11, v32

    mul-float v39, v39, v36

    add-float v39, v39, v11

    mul-float v38, v38, v37

    add-float v38, v38, v39

    mul-float v40, v40, v1

    add-float v40, v40, v38

    aget v11, v0, v12

    mul-float v38, v11, v4

    aget v39, v0, v19

    mul-float v41, v39, v9

    add-float v41, v41, v38

    aget v38, v0, v27

    mul-float v45, v38, v13

    add-float v45, v45, v41

    aget v41, v0, v3

    mul-float v46, v41, v17

    add-float v46, v46, v45

    mul-float v45, v11, v14

    mul-float v47, v39, v21

    add-float v47, v47, v45

    mul-float v45, v38, v23

    add-float v45, v45, v47

    mul-float v47, v41, v25

    add-float v47, v47, v45

    mul-float v45, v11, v24

    mul-float v48, v39, v29

    add-float v48, v48, v45

    mul-float v45, v38, v31

    add-float v45, v45, v48

    mul-float v48, v41, v33

    add-float v48, v48, v45

    mul-float v11, v11, v32

    mul-float v39, v39, v36

    add-float v39, v39, v11

    mul-float v38, v38, v37

    add-float v38, v38, v39

    mul-float v41, v41, v1

    add-float v41, v41, v38

    aget v11, v0, v16

    mul-float/2addr v4, v11

    aget v38, v0, v22

    mul-float v9, v9, v38

    add-float/2addr v9, v4

    aget v4, v0, v30

    mul-float/2addr v13, v4

    add-float/2addr v13, v9

    aget v9, v0, v7

    mul-float v17, v17, v9

    add-float v17, v17, v13

    mul-float/2addr v14, v11

    mul-float v21, v21, v38

    add-float v21, v21, v14

    mul-float v23, v23, v4

    add-float v23, v23, v21

    mul-float v25, v25, v9

    add-float v25, v25, v23

    mul-float v24, v24, v11

    mul-float v29, v29, v38

    add-float v29, v29, v24

    mul-float v31, v31, v4

    add-float v31, v31, v29

    mul-float v33, v33, v9

    add-float v33, v33, v31

    mul-float v11, v11, v32

    mul-float v38, v38, v36

    add-float v38, v38, v11

    mul-float v4, v4, v37

    add-float v4, v4, v38

    mul-float/2addr v9, v1

    add-float/2addr v9, v4

    aput v18, v0, v2

    aput v26, v0, v6

    aput v34, v0, v5

    aput v15, v0, v10

    aput v42, v0, v8

    aput v43, v0, v20

    aput v44, v0, v28

    aput v40, v0, v35

    aput v46, v0, v12

    aput v47, v0, v19

    aput v48, v0, v27

    aput v41, v0, v3

    aput v17, v0, v16

    aput v25, v0, v22

    aput v33, v0, v30

    aput v9, v0, v7

    return-void
.end method

.method public static final toAndroidBlendMode-s9anfk8(I)Landroid/graphics/BlendMode;
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Landroid/graphics/BlendMode;->CLEAR:Landroid/graphics/BlendMode;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    sget-object p0, Landroid/graphics/BlendMode;->SRC:Landroid/graphics/BlendMode;

    return-object p0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    sget-object p0, Landroid/graphics/BlendMode;->DST:Landroid/graphics/BlendMode;

    return-object p0

    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    sget-object p0, Landroid/graphics/BlendMode;->SRC_OVER:Landroid/graphics/BlendMode;

    return-object p0

    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    sget-object p0, Landroid/graphics/BlendMode;->DST_OVER:Landroid/graphics/BlendMode;

    return-object p0

    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    sget-object p0, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    return-object p0

    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    sget-object p0, Landroid/graphics/BlendMode;->DST_IN:Landroid/graphics/BlendMode;

    return-object p0

    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    sget-object p0, Landroid/graphics/BlendMode;->SRC_OUT:Landroid/graphics/BlendMode;

    return-object p0

    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    sget-object p0, Landroid/graphics/BlendMode;->DST_OUT:Landroid/graphics/BlendMode;

    return-object p0

    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    sget-object p0, Landroid/graphics/BlendMode;->SRC_ATOP:Landroid/graphics/BlendMode;

    return-object p0

    :cond_9
    const/16 v0, 0xa

    if-ne p0, v0, :cond_a

    sget-object p0, Landroid/graphics/BlendMode;->DST_ATOP:Landroid/graphics/BlendMode;

    return-object p0

    :cond_a
    const/16 v0, 0xb

    if-ne p0, v0, :cond_b

    sget-object p0, Landroid/graphics/BlendMode;->XOR:Landroid/graphics/BlendMode;

    return-object p0

    :cond_b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_c

    sget-object p0, Landroid/graphics/BlendMode;->PLUS:Landroid/graphics/BlendMode;

    return-object p0

    :cond_c
    const/16 v0, 0xd

    if-ne p0, v0, :cond_d

    sget-object p0, Landroid/graphics/BlendMode;->MODULATE:Landroid/graphics/BlendMode;

    return-object p0

    :cond_d
    const/16 v0, 0xe

    if-ne p0, v0, :cond_e

    sget-object p0, Landroid/graphics/BlendMode;->SCREEN:Landroid/graphics/BlendMode;

    return-object p0

    :cond_e
    const/16 v0, 0xf

    if-ne p0, v0, :cond_f

    sget-object p0, Landroid/graphics/BlendMode;->OVERLAY:Landroid/graphics/BlendMode;

    return-object p0

    :cond_f
    const/16 v0, 0x10

    if-ne p0, v0, :cond_10

    sget-object p0, Landroid/graphics/BlendMode;->DARKEN:Landroid/graphics/BlendMode;

    return-object p0

    :cond_10
    const/16 v0, 0x11

    if-ne p0, v0, :cond_11

    sget-object p0, Landroid/graphics/BlendMode;->LIGHTEN:Landroid/graphics/BlendMode;

    return-object p0

    :cond_11
    const/16 v0, 0x12

    if-ne p0, v0, :cond_12

    sget-object p0, Landroid/graphics/BlendMode;->COLOR_DODGE:Landroid/graphics/BlendMode;

    return-object p0

    :cond_12
    const/16 v0, 0x13

    if-ne p0, v0, :cond_13

    sget-object p0, Landroid/graphics/BlendMode;->COLOR_BURN:Landroid/graphics/BlendMode;

    return-object p0

    :cond_13
    const/16 v0, 0x14

    if-ne p0, v0, :cond_14

    sget-object p0, Landroid/graphics/BlendMode;->HARD_LIGHT:Landroid/graphics/BlendMode;

    return-object p0

    :cond_14
    const/16 v0, 0x15

    if-ne p0, v0, :cond_15

    sget-object p0, Landroid/graphics/BlendMode;->SOFT_LIGHT:Landroid/graphics/BlendMode;

    return-object p0

    :cond_15
    const/16 v0, 0x16

    if-ne p0, v0, :cond_16

    sget-object p0, Landroid/graphics/BlendMode;->DIFFERENCE:Landroid/graphics/BlendMode;

    return-object p0

    :cond_16
    const/16 v0, 0x17

    if-ne p0, v0, :cond_17

    sget-object p0, Landroid/graphics/BlendMode;->EXCLUSION:Landroid/graphics/BlendMode;

    return-object p0

    :cond_17
    const/16 v0, 0x18

    if-ne p0, v0, :cond_18

    sget-object p0, Landroid/graphics/BlendMode;->MULTIPLY:Landroid/graphics/BlendMode;

    return-object p0

    :cond_18
    const/16 v0, 0x19

    if-ne p0, v0, :cond_19

    sget-object p0, Landroid/graphics/BlendMode;->HUE:Landroid/graphics/BlendMode;

    return-object p0

    :cond_19
    const/16 v0, 0x1a

    if-ne p0, v0, :cond_1a

    sget-object p0, Landroid/graphics/BlendMode;->SATURATION:Landroid/graphics/BlendMode;

    return-object p0

    :cond_1a
    const/16 v0, 0x1b

    if-ne p0, v0, :cond_1b

    sget-object p0, Landroid/graphics/BlendMode;->COLOR:Landroid/graphics/BlendMode;

    return-object p0

    :cond_1b
    const/16 v0, 0x1c

    if-ne p0, v0, :cond_1c

    sget-object p0, Landroid/graphics/BlendMode;->LUMINOSITY:Landroid/graphics/BlendMode;

    return-object p0

    :cond_1c
    sget-object p0, Landroid/graphics/BlendMode;->SRC_OVER:Landroid/graphics/BlendMode;

    return-object p0
.end method

.method public static final toAndroidRect(Landroidx/compose/ui/geometry/Rect;)Landroid/graphics/Rect;
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    iget v1, p0, Landroidx/compose/ui/geometry/Rect;->left:F

    float-to-int v1, v1

    .line 3
    iget v2, p0, Landroidx/compose/ui/geometry/Rect;->top:F

    float-to-int v2, v2

    .line 4
    iget v3, p0, Landroidx/compose/ui/geometry/Rect;->right:F

    float-to-int v3, v3

    .line 5
    iget p0, p0, Landroidx/compose/ui/geometry/Rect;->bottom:F

    float-to-int p0, p0

    .line 6
    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static final toAndroidRect(Landroidx/compose/ui/unit/IntRect;)Landroid/graphics/Rect;
    .locals 4

    .line 7
    new-instance v0, Landroid/graphics/Rect;

    .line 8
    iget v1, p0, Landroidx/compose/ui/unit/IntRect;->left:I

    .line 9
    iget v2, p0, Landroidx/compose/ui/unit/IntRect;->top:I

    .line 10
    iget v3, p0, Landroidx/compose/ui/unit/IntRect;->right:I

    .line 11
    iget p0, p0, Landroidx/compose/ui/unit/IntRect;->bottom:I

    .line 12
    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static final toArgb-8_81llA(J)I
    .locals 1

    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->SrgbPrimaries:[F

    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Srgb:Landroidx/compose/ui/graphics/colorspace/Rgb;

    invoke-static {p0, p1, v0}, Landroidx/compose/ui/graphics/Color;->convert-vNxB06k(JLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    move-result-wide p0

    const/16 v0, 0x20

    ushr-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static final toBitmapConfig-1JJdX4A(I)Landroid/graphics/Bitmap$Config;
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    sget-object p0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    return-object p0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    sget-object p0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    return-object p0

    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    sget-object p0, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    return-object p0

    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    sget-object p0, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    return-object p0

    :cond_4
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    return-object p0
.end method

.method public static translate-impl$default([FFF)V
    .locals 8

    array-length v0, p0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    aget v0, p0, v0

    mul-float/2addr v0, p1

    const/4 v1, 0x4

    aget v1, p0, v1

    mul-float/2addr v1, p2

    add-float/2addr v1, v0

    const/16 v0, 0x8

    aget v0, p0, v0

    const/4 v2, 0x0

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    const/16 v1, 0xc

    aget v3, p0, v1

    add-float/2addr v0, v3

    const/4 v3, 0x1

    aget v3, p0, v3

    mul-float/2addr v3, p1

    const/4 v4, 0x5

    aget v4, p0, v4

    mul-float/2addr v4, p2

    add-float/2addr v4, v3

    const/16 v3, 0x9

    aget v3, p0, v3

    mul-float/2addr v3, v2

    add-float/2addr v3, v4

    const/16 v4, 0xd

    aget v5, p0, v4

    add-float/2addr v3, v5

    const/4 v5, 0x2

    aget v5, p0, v5

    mul-float/2addr v5, p1

    const/4 v6, 0x6

    aget v6, p0, v6

    mul-float/2addr v6, p2

    add-float/2addr v6, v5

    const/16 v5, 0xa

    aget v5, p0, v5

    mul-float/2addr v5, v2

    add-float/2addr v5, v6

    const/16 v6, 0xe

    aget v7, p0, v6

    add-float/2addr v5, v7

    const/4 v7, 0x3

    aget v7, p0, v7

    mul-float/2addr v7, p1

    const/4 p1, 0x7

    aget p1, p0, p1

    mul-float/2addr p1, p2

    add-float/2addr p1, v7

    const/16 p2, 0xb

    aget p2, p0, p2

    mul-float/2addr p2, v2

    add-float/2addr p2, p1

    const/16 p1, 0xf

    aget v2, p0, p1

    add-float/2addr p2, v2

    aput v0, p0, v1

    aput v3, p0, v4

    aput v5, p0, v6

    aput p2, p0, p1

    return-void
.end method

.method public static final writeValidRootInUnitRange(F[FI)I
    .locals 3

    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    move v0, v1

    :cond_1
    sub-float p0, v0, p0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const v1, 0x358cedba    # 1.05E-6f

    cmpl-float p0, p0, v1

    if-lez p0, :cond_2

    const/high16 v0, 0x7fc00000    # Float.NaN

    :cond_2
    aput v0, p1, p2

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public abstract applyTo-Pq9zytI(FJLandroidx/compose/ui/graphics/AndroidPaint;)V
.end method

.method public abstract getBounds()Landroidx/compose/ui/geometry/Rect;
.end method
