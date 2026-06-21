.class public abstract Le/x;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->CircleShape:Landroidx/compose/foundation/shape/RoundedCornerShape;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    const/16 v0, 0x11

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    const-wide v0, 0x200000000L

    const-wide/high16 v2, 0x3ff4000000000000L    # 1.25

    double-to-float v2, v2

    invoke-static {v2, v0, v1}, Landroidx/compose/ui/unit/TextUnitKt;->pack(FJ)J

    move-result-wide v0

    sput-wide v0, Le/x;->a:J

    return-void
.end method

.method public static final a(Le/i1;Le/i1;ZLandroidx/compose/ui/text/font/SystemFontFamily;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 36

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v0, p5

    move/from16 v6, p6

    const-string v4, "lightThemeColors"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "darkThemeColors"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, -0x195a180f

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v4, v6, 0x6

    if-nez v4, :cond_1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v6

    goto :goto_1

    :cond_1
    move v4, v6

    :goto_1
    and-int/lit8 v7, v6, 0x30

    if-nez v7, :cond_3

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x20

    goto :goto_2

    :cond_2
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v4, v7

    :cond_3
    and-int/lit16 v7, v6, 0x180

    if-nez v7, :cond_5

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x100

    goto :goto_3

    :cond_4
    const/16 v7, 0x80

    :goto_3
    or-int/2addr v4, v7

    :cond_5
    and-int/lit16 v7, v6, 0xc00

    if-nez v7, :cond_6

    or-int/lit16 v4, v4, 0x400

    :cond_6
    and-int/lit16 v7, v6, 0x6000

    if-nez v7, :cond_8

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/16 v7, 0x4000

    goto :goto_4

    :cond_7
    const/16 v7, 0x2000

    :goto_4
    or-int/2addr v4, v7

    :cond_8
    and-int/lit16 v4, v4, 0x2493

    const/16 v7, 0x2492

    if-ne v4, v7, :cond_a

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v4, p3

    goto/16 :goto_a

    :cond_a
    :goto_5
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v4, v6, 0x1

    if-eqz v4, :cond_c

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_6

    :cond_b
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v4, p3

    goto :goto_7

    :cond_c
    :goto_6
    sget-object v4, Landroidx/compose/ui/text/font/SystemFontFamily;->SansSerif:Landroidx/compose/ui/text/font/GenericFontFamily;

    :goto_7
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    if-eqz v3, :cond_d

    move-object v7, v2

    goto :goto_8

    :cond_d
    move-object v7, v1

    :goto_8
    if-eqz v3, :cond_e

    sget-object v8, Landroidx/compose/material/ColorsKt;->LocalColors:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    const-wide v8, 0xffbb86fcL

    invoke-static {v8, v9}, Landroidx/compose/ui/graphics/Brush;->Color(J)J

    move-result-wide v11

    const-wide v8, 0xff3700b3L

    invoke-static {v8, v9}, Landroidx/compose/ui/graphics/Brush;->Color(J)J

    move-result-wide v13

    const-wide v8, 0xff03dac6L

    invoke-static {v8, v9}, Landroidx/compose/ui/graphics/Brush;->Color(J)J

    move-result-wide v15

    const-wide v8, 0xff121212L

    invoke-static {v8, v9}, Landroidx/compose/ui/graphics/Brush;->Color(J)J

    move-result-wide v19

    invoke-static {v8, v9}, Landroidx/compose/ui/graphics/Brush;->Color(J)J

    move-result-wide v21

    const-wide v8, 0xffcf6679L

    invoke-static {v8, v9}, Landroidx/compose/ui/graphics/Brush;->Color(J)J

    move-result-wide v23

    sget-wide v25, Landroidx/compose/ui/graphics/Color;->Black:J

    sget-wide v29, Landroidx/compose/ui/graphics/Color;->White:J

    new-instance v10, Landroidx/compose/material/Colors;

    const/16 v35, 0x0

    move-wide/from16 v17, v15

    move-wide/from16 v27, v25

    move-wide/from16 v31, v29

    move-wide/from16 v33, v25

    invoke-direct/range {v10 .. v35}, Landroidx/compose/material/Colors;-><init>(JJJJJJJJJJJJZ)V

    goto :goto_9

    :cond_e
    invoke-static {}, Landroidx/compose/material/ColorsKt;->lightColors-2qZNXz8$default()Landroidx/compose/material/Colors;

    move-result-object v10

    :goto_9
    sget-object v8, Le/j1;->c:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v8, v7}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v7

    new-instance v8, Le/w;

    const/4 v9, 0x0

    invoke-direct {v8, v10, v4, v5, v9}, Le/w;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const v9, -0x4334d34f

    invoke-static {v9, v8, v0}, Landroidx/compose/runtime/internal/Utils_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v8

    const/16 v9, 0x38

    invoke-static {v7, v8, v0, v9}, Landroidx/compose/runtime/AnchoredGroupPath;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    :goto_a
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_f

    new-instance v0, Le/x$$ExternalSyntheticLambda0;

    invoke-direct/range {v0 .. v6}, Le/x$$ExternalSyntheticLambda0;-><init>(Le/i1;Le/i1;ZLandroidx/compose/ui/text/font/SystemFontFamily;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_f
    return-void
.end method
