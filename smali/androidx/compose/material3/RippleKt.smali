.class public abstract Landroidx/compose/material3/RippleKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DefaultBoundedRipple:Landroidx/compose/material3/RippleNodeFactory;

.field public static final DefaultUnboundedRipple:Landroidx/compose/material3/RippleNodeFactory;

.field public static final LocalRippleConfiguration:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

.field public static final LocalUseFallbackRippleImplementation:Landroidx/compose/runtime/StaticProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    sget-object v0, Landroidx/compose/material3/ShapesKt$LocalShapes$1;->INSTANCE$8:Landroidx/compose/material3/ShapesKt$LocalShapes$1;

    new-instance v1, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/ProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    sput-object v1, Landroidx/compose/material3/RippleKt;->LocalUseFallbackRippleImplementation:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    sget-object v0, Landroidx/compose/material3/ShapesKt$LocalShapes$1;->INSTANCE$7:Landroidx/compose/material3/ShapesKt$LocalShapes$1;

    new-instance v1, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    sput-object v1, Landroidx/compose/material3/RippleKt;->LocalRippleConfiguration:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    new-instance v0, Landroidx/compose/material3/RippleNodeFactory;

    sget-wide v1, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    const/4 v3, 0x1

    const/high16 v4, 0x7fc00000    # Float.NaN

    invoke-direct {v0, v3, v4, v1, v2}, Landroidx/compose/material3/RippleNodeFactory;-><init>(ZFJ)V

    sput-object v0, Landroidx/compose/material3/RippleKt;->DefaultBoundedRipple:Landroidx/compose/material3/RippleNodeFactory;

    new-instance v0, Landroidx/compose/material3/RippleNodeFactory;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroidx/compose/material3/RippleNodeFactory;-><init>(ZFJ)V

    sput-object v0, Landroidx/compose/material3/RippleKt;->DefaultUnboundedRipple:Landroidx/compose/material3/RippleNodeFactory;

    return-void
.end method

.method public static final rippleOrFallbackImplementation-9IZ8Weo(FLandroidx/compose/runtime/ComposerImpl;II)Landroidx/compose/foundation/Indication;
    .locals 6

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    and-int/lit8 p3, p3, 0x2

    const/high16 v3, 0x7fc00000    # Float.NaN

    if-eqz p3, :cond_1

    move p0, v3

    :cond_1
    sget-wide v4, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    const p3, -0x4c54e819

    invoke-virtual {p1, p3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object p3, Landroidx/compose/material3/RippleKt;->LocalUseFallbackRippleImplementation:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p1, p3}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_a

    sget-object p3, Landroidx/compose/material/ripple/RippleKt;->DefaultTweenSpec:Landroidx/compose/animation/core/TweenSpec;

    new-instance p3, Landroidx/compose/ui/graphics/Color;

    invoke-direct {p3, v4, v5}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    invoke-static {p3, p1}, Landroidx/compose/runtime/AnchoredGroupPath;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/MutableState;

    move-result-object p3

    and-int/lit8 v3, p2, 0xe

    xor-int/lit8 v3, v3, 0x6

    const/4 v4, 0x4

    if-le v3, v4, :cond_2

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    and-int/lit8 v3, p2, 0x6

    if-ne v3, v4, :cond_4

    :cond_3
    move v3, v2

    goto :goto_1

    :cond_4
    move v3, v1

    :goto_1
    and-int/lit8 v4, p2, 0x70

    xor-int/lit8 v4, v4, 0x30

    const/16 v5, 0x20

    if-le v4, v5, :cond_5

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v4

    if-nez v4, :cond_7

    :cond_5
    and-int/lit8 p2, p2, 0x30

    if-ne p2, v5, :cond_6

    goto :goto_2

    :cond_6
    move v2, v1

    :cond_7
    :goto_2
    or-int p2, v3, v2

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez p2, :cond_8

    sget-object p2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v2, p2, :cond_9

    :cond_8
    new-instance v2, Landroidx/compose/material/ripple/PlatformRipple;

    invoke-direct {v2, v0, p0, p3}, Landroidx/compose/material/ripple/PlatformRipple;-><init>(ZFLandroidx/compose/runtime/MutableState;)V

    invoke-virtual {p1, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_9
    check-cast v2, Landroidx/compose/material/ripple/PlatformRipple;

    goto :goto_4

    :cond_a
    invoke-static {p0, v3}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-static {v4, v5, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result p2

    if-eqz p2, :cond_c

    if-eqz v0, :cond_b

    sget-object p0, Landroidx/compose/material3/RippleKt;->DefaultBoundedRipple:Landroidx/compose/material3/RippleNodeFactory;

    :goto_3
    move-object v2, p0

    goto :goto_4

    :cond_b
    sget-object p0, Landroidx/compose/material3/RippleKt;->DefaultUnboundedRipple:Landroidx/compose/material3/RippleNodeFactory;

    goto :goto_3

    :cond_c
    new-instance p2, Landroidx/compose/material3/RippleNodeFactory;

    invoke-direct {p2, v0, p0, v4, v5}, Landroidx/compose/material3/RippleNodeFactory;-><init>(ZFJ)V

    move-object v2, p2

    :goto_4
    invoke-virtual {p1, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object v2
.end method
