.class public abstract Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final platformFlingScrollFriction:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    sput v0, Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec_androidKt;->platformFlingScrollFriction:F

    return-void
.end method

.method public static final rememberSplineBasedDecay(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/animation/core/DecayAnimationSpecImpl;
    .locals 3

    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/unit/Density;

    invoke-interface {v0}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v1

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_0

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v2, v1, :cond_1

    :cond_0
    new-instance v1, Landroidx/room/ObservedTableVersions;

    invoke-direct {v1, v0}, Landroidx/room/ObservedTableVersions;-><init>(Landroidx/compose/ui/unit/Density;)V

    new-instance v2, Landroidx/compose/animation/core/DecayAnimationSpecImpl;

    invoke-direct {v2, v1}, Landroidx/compose/animation/core/DecayAnimationSpecImpl;-><init>(Landroidx/compose/animation/core/FloatDecayAnimationSpec;)V

    invoke-virtual {p0, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1
    check-cast v2, Landroidx/compose/animation/core/DecayAnimationSpecImpl;

    return-object v2
.end method
