.class public final Lcom/motorola/camera/ui/compose/CustomModifiersKt$animateRotation$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $rotation:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/motorola/camera/ui/compose/CustomModifiersKt$animateRotation$1;->$rotation:F

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Landroidx/compose/ui/Modifier;

    move-object v3, p2

    check-cast v3, Landroidx/compose/runtime/ComposerImpl;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    const-string p2, "$this$composed"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const p2, 0x3e591b42

    invoke-virtual {v3, p2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const p2, 0xc7f5659

    invoke-virtual {v3, p2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const p2, 0x7f0b006c

    invoke-static {p2, v3}, Landroidx/compose/ui/res/PrimitiveResources_androidKt;->integerResource(ILandroidx/compose/runtime/ComposerImpl;)I

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {v3, p3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    iget p0, p0, Lcom/motorola/camera/ui/compose/CustomModifiersKt$animateRotation$1;->$rotation:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    :goto_1
    move v0, p0

    goto :goto_2

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :goto_2
    sget-object p0, Landroidx/compose/animation/core/EasingFunctionsKt;->EaseInOut:Landroidx/compose/animation/core/CubicBezierEasing;

    new-instance v1, Landroidx/compose/animation/core/TweenSpec;

    invoke-direct {v1, p2, p3, p0}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;)V

    const/16 v4, 0xc00

    const/16 v5, 0x14

    const-string v2, "AnimateRotation"

    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateFloatAsState(FLandroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Landroidx/compose/runtime/ComposerImpl;II)Landroidx/compose/runtime/State;

    move-result-object p0

    const/high16 p2, 0x42b40000    # 90.0f

    cmpg-float p2, v0, p2

    const v1, 0x4c5de2

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-nez p2, :cond_2

    goto :goto_3

    :cond_2
    const/high16 p2, 0x43870000    # 270.0f

    cmpg-float p2, v0, p2

    if-nez p2, :cond_6

    :goto_3
    const p2, 0xc7f94b6

    invoke-virtual {v3, p2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v3, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-nez p2, :cond_3

    if-ne v0, v2, :cond_4

    :cond_3
    new-instance v0, Lcom/motorola/camera/ui/compose/component/pantone/PantoneComponent$$ExternalSyntheticLambda1;

    const/4 p2, 0x1

    invoke-direct {v0, p0, p2}, Lcom/motorola/camera/ui/compose/component/pantone/PantoneComponent$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/runtime/State;I)V

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_4
    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v3, p3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {p1, v0}, Landroidx/compose/ui/graphics/Brush;->graphicsLayer(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    const p1, 0x6e3c21fe

    invoke-virtual {v3, p1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_5

    new-instance p1, Lcom/motorola/camera/ui/compose/CustomModifiersKt$$ExternalSyntheticLambda0;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lcom/motorola/camera/ui/compose/CustomModifiersKt$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v3, p1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_5
    check-cast p1, Lkotlin/jvm/functions/Function3;

    invoke-virtual {v3, p3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {p0, p1}, Landroidx/compose/ui/layout/ScaleFactorKt;->layout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    invoke-virtual {v3, p3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_4

    :cond_6
    const p2, 0xc7fcfd1

    invoke-virtual {v3, p2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v3, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-nez p2, :cond_7

    if-ne v0, v2, :cond_8

    :cond_7
    new-instance v0, Lcom/motorola/camera/ui/compose/component/pantone/PantoneComponent$$ExternalSyntheticLambda1;

    const/4 p2, 0x2

    invoke-direct {v0, p0, p2}, Lcom/motorola/camera/ui/compose/component/pantone/PantoneComponent$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/runtime/State;I)V

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_8
    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v3, p3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {p1, v0}, Landroidx/compose/ui/graphics/Brush;->graphicsLayer(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    invoke-virtual {v3, p3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_4
    invoke-virtual {v3, p3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object p0
.end method
