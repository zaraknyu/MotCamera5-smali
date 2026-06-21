.class public abstract Landroidx/compose/material3/SurfaceKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LocalAbsoluteTonalElevation:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroidx/compose/material3/ShapesKt$LocalShapes$1;->INSTANCE$9:Landroidx/compose/material3/ShapesKt$LocalShapes$1;

    new-instance v1, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    sput-object v1, Landroidx/compose/material3/SurfaceKt;->LocalAbsoluteTonalElevation:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    return-void
.end method

.method public static final Surface-o_FOJdg(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJFLandroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 15

    move-object/from16 v0, p12

    const/4 v1, 0x0

    int-to-float v2, v1

    move/from16 v3, p13

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_0

    int-to-float v1, v1

    move v13, v1

    goto :goto_0

    :cond_0
    move/from16 v13, p8

    :goto_0
    sget-object v1, Landroidx/compose/material3/SurfaceKt;->LocalAbsoluteTonalElevation:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/unit/Dp;

    iget v3, v3, Landroidx/compose/ui/unit/Dp;->value:F

    add-float v8, v3, v2

    sget-object v2, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    new-instance v3, Landroidx/compose/ui/graphics/Color;

    move-wide/from16 v4, p6

    invoke-direct {v3, v4, v5}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v2

    new-instance v3, Landroidx/compose/ui/unit/Dp;

    invoke-direct {v3, v8}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v1

    filled-new-array {v2, v1}, [Landroidx/compose/runtime/ProvidedValue;

    move-result-object v1

    new-instance v3, Landroidx/compose/material3/SurfaceKt$Surface$2;

    move-object v12, p0

    move-object/from16 v4, p1

    move/from16 v11, p2

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v14, p11

    invoke-direct/range {v3 .. v14}, Landroidx/compose/material3/SurfaceKt$Surface$2;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JFLandroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;ZLkotlin/jvm/functions/Function0;FLandroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    const p0, 0x4c46b75c    # 5.209227E7f

    invoke-static {p0, v3, v0}, Landroidx/compose/runtime/internal/Utils_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object p0

    const/16 v2, 0x38

    invoke-static {v1, p0, v0, v2}, Landroidx/compose/runtime/AnchoredGroupPath;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/ComposerImpl;I)V

    return-void
.end method
