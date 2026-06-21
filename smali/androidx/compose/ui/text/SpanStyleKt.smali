.class public abstract Landroidx/compose/ui/text/SpanStyleKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DefaultBackgroundColor:J

.field public static final DefaultColorForegroundStyle:Landroidx/compose/ui/text/style/TextForegroundStyle;

.field public static final DefaultFontSize:J

.field public static final DefaultLetterSpacing:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xe

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/ui/text/SpanStyleKt;->DefaultFontSize:J

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/ui/text/SpanStyleKt;->DefaultLetterSpacing:J

    sget-wide v0, Landroidx/compose/ui/graphics/Color;->Transparent:J

    sput-wide v0, Landroidx/compose/ui/text/SpanStyleKt;->DefaultBackgroundColor:J

    sget-wide v0, Landroidx/compose/ui/graphics/Color;->Black:J

    const-wide/16 v2, 0x10

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    new-instance v2, Landroidx/compose/ui/text/style/ColorStyle;

    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/text/style/ColorStyle;-><init>(J)V

    goto :goto_0

    :cond_0
    sget-object v2, Landroidx/compose/ui/text/style/TextForegroundStyle$Unspecified;->INSTANCE:Landroidx/compose/ui/text/style/TextForegroundStyle$Unspecified;

    :goto_0
    sput-object v2, Landroidx/compose/ui/text/SpanStyleKt;->DefaultColorForegroundStyle:Landroidx/compose/ui/text/style/TextForegroundStyle;

    return-void
.end method

.method public static final fastMerge-dSHsh3o(Landroidx/compose/ui/text/SpanStyle;JLandroidx/compose/ui/graphics/Brush;FJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/SystemFontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/graphics/drawscope/DrawStyle;)Landroidx/compose/ui/text/SpanStyle;
    .locals 24

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-wide/from16 v12, p12

    move-object/from16 v4, p19

    sget-object v16, Landroidx/compose/ui/unit/TextUnit;->TextUnitTypes:[Landroidx/compose/ui/unit/TextUnitType;

    const-wide v16, 0xff00000000L

    and-long v18, v5, v16

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    const-wide/16 v22, 0x10

    if-nez v18, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v14, v0, Landroidx/compose/ui/text/SpanStyle;->fontSize:J

    invoke-static {v5, v6, v14, v15}, Landroidx/compose/ui/unit/TextUnit;->equals-impl0(JJ)Z

    move-result v14

    if-eqz v14, :cond_1

    :goto_0
    if-nez v3, :cond_5

    cmp-long v14, v1, v22

    if-eqz v14, :cond_5

    iget-object v14, v0, Landroidx/compose/ui/text/SpanStyle;->textForegroundStyle:Landroidx/compose/ui/text/style/TextForegroundStyle;

    invoke-interface {v14}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getColor-0d7_KjU()J

    move-result-wide v14

    invoke-static {v1, v2, v14, v15}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v14

    if-eqz v14, :cond_1

    goto :goto_1

    :cond_1
    move-object/from16 v15, p14

    :cond_2
    move-wide/from16 v4, p17

    :cond_3
    move-object/from16 v6, p20

    :cond_4
    move-object/from16 v7, p21

    goto/16 :goto_7

    :cond_5
    :goto_1
    if-eqz v8, :cond_6

    iget-object v14, v0, Landroidx/compose/ui/text/SpanStyle;->fontStyle:Landroidx/compose/ui/text/font/FontStyle;

    invoke-virtual {v8, v14}, Landroidx/compose/ui/text/font/FontStyle;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    :cond_6
    if-eqz v7, :cond_7

    iget-object v14, v0, Landroidx/compose/ui/text/SpanStyle;->fontWeight:Landroidx/compose/ui/text/font/FontWeight;

    invoke-virtual {v7, v14}, Landroidx/compose/ui/text/font/FontWeight;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    :cond_7
    if-eqz v10, :cond_8

    iget-object v14, v0, Landroidx/compose/ui/text/SpanStyle;->fontFamily:Landroidx/compose/ui/text/font/SystemFontFamily;

    if-ne v10, v14, :cond_1

    :cond_8
    and-long v14, v12, v16

    cmp-long v14, v14, v20

    if-nez v14, :cond_9

    goto :goto_2

    :cond_9
    iget-wide v14, v0, Landroidx/compose/ui/text/SpanStyle;->letterSpacing:J

    invoke-static {v12, v13, v14, v15}, Landroidx/compose/ui/unit/TextUnit;->equals-impl0(JJ)Z

    move-result v14

    if-eqz v14, :cond_1

    :goto_2
    if-eqz v4, :cond_a

    iget-object v14, v0, Landroidx/compose/ui/text/SpanStyle;->textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    invoke-virtual {v4, v14}, Landroidx/compose/ui/text/style/TextDecoration;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    :cond_a
    iget-object v14, v0, Landroidx/compose/ui/text/SpanStyle;->textForegroundStyle:Landroidx/compose/ui/text/style/TextForegroundStyle;

    invoke-interface {v14}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getBrush()Landroidx/compose/ui/graphics/Brush;

    move-result-object v14

    invoke-static {v3, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    if-eqz v3, :cond_b

    iget-object v14, v0, Landroidx/compose/ui/text/SpanStyle;->textForegroundStyle:Landroidx/compose/ui/text/style/TextForegroundStyle;

    invoke-interface {v14}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getAlpha()F

    move-result v14

    cmpg-float v14, p4, v14

    if-nez v14, :cond_1

    :cond_b
    if-eqz v9, :cond_c

    iget-object v14, v0, Landroidx/compose/ui/text/SpanStyle;->fontSynthesis:Landroidx/compose/ui/text/font/FontSynthesis;

    invoke-virtual {v9, v14}, Landroidx/compose/ui/text/font/FontSynthesis;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    :cond_c
    if-eqz v11, :cond_d

    iget-object v14, v0, Landroidx/compose/ui/text/SpanStyle;->fontFeatureSettings:Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    :cond_d
    if-eqz p14, :cond_e

    iget-object v14, v0, Landroidx/compose/ui/text/SpanStyle;->baselineShift:Landroidx/compose/ui/text/style/BaselineShift;

    move-object/from16 v15, p14

    invoke-virtual {v15, v14}, Landroidx/compose/ui/text/style/BaselineShift;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    goto :goto_3

    :cond_e
    move-object/from16 v15, p14

    :goto_3
    if-eqz p15, :cond_f

    iget-object v14, v0, Landroidx/compose/ui/text/SpanStyle;->textGeometricTransform:Landroidx/compose/ui/text/style/TextGeometricTransform;

    move-object/from16 v4, p15

    invoke-virtual {v4, v14}, Landroidx/compose/ui/text/style/TextGeometricTransform;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    goto :goto_4

    :cond_f
    move-object/from16 v4, p15

    :goto_4
    if-eqz p16, :cond_10

    iget-object v14, v0, Landroidx/compose/ui/text/SpanStyle;->localeList:Landroidx/compose/ui/text/intl/LocaleList;

    move-object/from16 v4, p16

    invoke-virtual {v4, v14}, Landroidx/compose/ui/text/intl/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    :goto_5
    move-wide/from16 v4, p17

    goto :goto_6

    :cond_10
    move-object/from16 v4, p16

    goto :goto_5

    :goto_6
    cmp-long v6, v4, v22

    if-eqz v6, :cond_11

    iget-wide v6, v0, Landroidx/compose/ui/text/SpanStyle;->background:J

    invoke-static {v4, v5, v6, v7}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_11
    move-object/from16 v6, p20

    if-eqz v6, :cond_12

    iget-object v7, v0, Landroidx/compose/ui/text/SpanStyle;->shadow:Landroidx/compose/ui/graphics/Shadow;

    invoke-virtual {v6, v7}, Landroidx/compose/ui/graphics/Shadow;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_12
    move-object/from16 v7, p21

    if-eqz v7, :cond_13

    iget-object v14, v0, Landroidx/compose/ui/text/SpanStyle;->drawStyle:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    invoke-virtual {v7, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_13

    goto :goto_7

    :cond_13
    return-object v0

    :goto_7
    sget-object v14, Landroidx/compose/ui/text/style/TextForegroundStyle$Unspecified;->INSTANCE:Landroidx/compose/ui/text/style/TextForegroundStyle$Unspecified;

    if-eqz v3, :cond_17

    instance-of v1, v3, Landroidx/compose/ui/graphics/SolidColor;

    if-eqz v1, :cond_15

    move-object v1, v3

    check-cast v1, Landroidx/compose/ui/graphics/SolidColor;

    iget-wide v1, v1, Landroidx/compose/ui/graphics/SolidColor;->value:J

    move/from16 v3, p4

    invoke-static {v3, v1, v2}, Lkotlinx/coroutines/channels/ChannelsKt;->modulate-DxMtmZc(FJ)J

    move-result-wide v1

    cmp-long v3, v1, v22

    if-eqz v3, :cond_14

    new-instance v3, Landroidx/compose/ui/text/style/ColorStyle;

    invoke-direct {v3, v1, v2}, Landroidx/compose/ui/text/style/ColorStyle;-><init>(J)V

    goto :goto_8

    :cond_14
    move-object v3, v14

    goto :goto_8

    :cond_15
    move/from16 v1, p4

    instance-of v2, v3, Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;

    if-eqz v2, :cond_16

    new-instance v2, Landroidx/compose/ui/text/style/BrushStyle;

    check-cast v3, Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;

    invoke-direct {v2, v3, v1}, Landroidx/compose/ui/text/style/BrushStyle;-><init>(Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;F)V

    move-object v3, v2

    goto :goto_8

    :cond_16
    new-instance v0, Lcom/google/gson/JsonParseException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_17
    cmp-long v3, v1, v22

    if-eqz v3, :cond_14

    new-instance v3, Landroidx/compose/ui/text/style/ColorStyle;

    invoke-direct {v3, v1, v2}, Landroidx/compose/ui/text/style/ColorStyle;-><init>(J)V

    :goto_8
    iget-object v1, v0, Landroidx/compose/ui/text/SpanStyle;->textForegroundStyle:Landroidx/compose/ui/text/style/TextForegroundStyle;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v2, v3, Landroidx/compose/ui/text/style/BrushStyle;

    move/from16 v19, v2

    if-eqz v2, :cond_19

    instance-of v2, v1, Landroidx/compose/ui/text/style/BrushStyle;

    if-eqz v2, :cond_19

    new-instance v2, Landroidx/compose/ui/text/style/BrushStyle;

    move-object v14, v3

    check-cast v14, Landroidx/compose/ui/text/style/BrushStyle;

    iget-object v14, v14, Landroidx/compose/ui/text/style/BrushStyle;->value:Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;

    check-cast v3, Landroidx/compose/ui/text/style/BrushStyle;

    iget v3, v3, Landroidx/compose/ui/text/style/BrushStyle;->alpha:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v19

    if-eqz v19, :cond_18

    invoke-interface {v1}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getAlpha()F

    move-result v3

    :cond_18
    invoke-direct {v2, v14, v3}, Landroidx/compose/ui/text/style/BrushStyle;-><init>(Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;F)V

    move-object v3, v2

    goto :goto_9

    :cond_19
    if-eqz v19, :cond_1a

    instance-of v2, v1, Landroidx/compose/ui/text/style/BrushStyle;

    if-nez v2, :cond_1a

    goto :goto_9

    :cond_1a
    if-nez v19, :cond_1c

    instance-of v2, v1, Landroidx/compose/ui/text/style/BrushStyle;

    if-eqz v2, :cond_1c

    :cond_1b
    move-object v3, v1

    goto :goto_9

    :cond_1c
    invoke-virtual {v3, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    :goto_9
    if-nez v10, :cond_1d

    iget-object v1, v0, Landroidx/compose/ui/text/SpanStyle;->fontFamily:Landroidx/compose/ui/text/font/SystemFontFamily;

    move-object v10, v1

    :cond_1d
    if-nez v18, :cond_1e

    iget-wide v1, v0, Landroidx/compose/ui/text/SpanStyle;->fontSize:J

    goto :goto_a

    :cond_1e
    move-wide/from16 v1, p5

    :goto_a
    if-nez p7, :cond_1f

    iget-object v14, v0, Landroidx/compose/ui/text/SpanStyle;->fontWeight:Landroidx/compose/ui/text/font/FontWeight;

    goto :goto_b

    :cond_1f
    move-object/from16 v14, p7

    :goto_b
    if-nez v8, :cond_20

    iget-object v8, v0, Landroidx/compose/ui/text/SpanStyle;->fontStyle:Landroidx/compose/ui/text/font/FontStyle;

    :cond_20
    if-nez v9, :cond_21

    iget-object v9, v0, Landroidx/compose/ui/text/SpanStyle;->fontSynthesis:Landroidx/compose/ui/text/font/FontSynthesis;

    :cond_21
    if-nez v11, :cond_22

    iget-object v11, v0, Landroidx/compose/ui/text/SpanStyle;->fontFeatureSettings:Ljava/lang/String;

    :cond_22
    and-long v16, v12, v16

    cmp-long v16, v16, v20

    if-nez v16, :cond_23

    iget-wide v12, v0, Landroidx/compose/ui/text/SpanStyle;->letterSpacing:J

    :cond_23
    if-nez v15, :cond_24

    iget-object v15, v0, Landroidx/compose/ui/text/SpanStyle;->baselineShift:Landroidx/compose/ui/text/style/BaselineShift;

    :cond_24
    move-wide/from16 p2, v1

    if-nez p15, :cond_25

    iget-object v1, v0, Landroidx/compose/ui/text/SpanStyle;->textGeometricTransform:Landroidx/compose/ui/text/style/TextGeometricTransform;

    goto :goto_c

    :cond_25
    move-object/from16 v1, p15

    :goto_c
    if-nez p16, :cond_26

    iget-object v2, v0, Landroidx/compose/ui/text/SpanStyle;->localeList:Landroidx/compose/ui/text/intl/LocaleList;

    goto :goto_d

    :cond_26
    move-object/from16 v2, p16

    :goto_d
    cmp-long v16, v4, v22

    if-eqz v16, :cond_27

    goto :goto_e

    :cond_27
    iget-wide v4, v0, Landroidx/compose/ui/text/SpanStyle;->background:J

    :goto_e
    move-object/from16 p12, v1

    if-nez p19, :cond_28

    iget-object v1, v0, Landroidx/compose/ui/text/SpanStyle;->textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    goto :goto_f

    :cond_28
    move-object/from16 v1, p19

    :goto_f
    if-nez v6, :cond_29

    iget-object v6, v0, Landroidx/compose/ui/text/SpanStyle;->shadow:Landroidx/compose/ui/graphics/Shadow;

    :cond_29
    if-nez v7, :cond_2a

    iget-object v0, v0, Landroidx/compose/ui/text/SpanStyle;->drawStyle:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    goto :goto_10

    :cond_2a
    move-object v0, v7

    :goto_10
    new-instance v7, Landroidx/compose/ui/text/SpanStyle;

    move-object/from16 p18, v0

    move-object/from16 p16, v1

    move-object/from16 p13, v2

    move-object/from16 p1, v3

    move-wide/from16 p14, v4

    move-object/from16 p17, v6

    move-object/from16 p0, v7

    move-object/from16 p5, v8

    move-object/from16 p6, v9

    move-object/from16 p7, v10

    move-object/from16 p8, v11

    move-wide/from16 p9, v12

    move-object/from16 p4, v14

    move-object/from16 p11, v15

    invoke-direct/range {p0 .. p18}, Landroidx/compose/ui/text/SpanStyle;-><init>(Landroidx/compose/ui/text/style/TextForegroundStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/SystemFontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/graphics/drawscope/DrawStyle;)V

    move-object/from16 v0, p0

    return-object v0
.end method
