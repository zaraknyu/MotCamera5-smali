.class public final Landroidx/compose/material/ripple/PlatformRipple;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/Indication;


# instance fields
.field public final bounded:Z

.field public final color:Landroidx/compose/runtime/MutableState;

.field public final radius:F


# direct methods
.method public constructor <init>(ZFLandroidx/compose/runtime/MutableState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/compose/material/ripple/PlatformRipple;->bounded:Z

    iput p2, p0, Landroidx/compose/material/ripple/PlatformRipple;->radius:F

    iput-object p3, p0, Landroidx/compose/material/ripple/PlatformRipple;->color:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Landroidx/compose/material/ripple/PlatformRipple;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroidx/compose/material/ripple/PlatformRipple;

    iget-boolean v0, p1, Landroidx/compose/material/ripple/PlatformRipple;->bounded:Z

    iget-boolean v1, p0, Landroidx/compose/material/ripple/PlatformRipple;->bounded:Z

    if-eq v1, v0, :cond_2

    goto :goto_0

    :cond_2
    iget v0, p0, Landroidx/compose/material/ripple/PlatformRipple;->radius:F

    iget v1, p1, Landroidx/compose/material/ripple/PlatformRipple;->radius:F

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object p0, p0, Landroidx/compose/material/ripple/PlatformRipple;->color:Landroidx/compose/runtime/MutableState;

    iget-object p1, p1, Landroidx/compose/material/ripple/PlatformRipple;->color:Landroidx/compose/runtime/MutableState;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Landroidx/compose/material/ripple/PlatformRipple;->bounded:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/compose/material/ripple/PlatformRipple;->radius:F

    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IFI)I

    move-result v0

    iget-object p0, p0, Landroidx/compose/material/ripple/PlatformRipple;->color:Landroidx/compose/runtime/MutableState;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final rememberUpdatedInstance(Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/foundation/IndicationInstance;
    .locals 11

    const v0, 0x3aef0613

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v0, Landroidx/compose/material/ripple/RippleThemeKt;->LocalRippleTheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/material/ripple/RippleTheme;

    iget-object v1, p0, Landroidx/compose/material/ripple/PlatformRipple;->color:Landroidx/compose/runtime/MutableState;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    iget-wide v2, v2, Landroidx/compose/ui/graphics/Color;->value:J

    const-wide/16 v4, 0x10

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const v2, -0x1217eb4e

    invoke-virtual {p2, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p2, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/Color;

    iget-wide v1, v1, Landroidx/compose/ui/graphics/Color;->value:J

    goto :goto_0

    :cond_0
    const v1, -0x12170996

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-interface {v0, p2}, Landroidx/compose/material/ripple/RippleTheme;->defaultColor-WaAFU9c(Landroidx/compose/runtime/ComposerImpl;)J

    move-result-wide v1

    invoke-virtual {p2, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_0
    new-instance v4, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v4, v1, v2}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    invoke-static {v4, p2}, Landroidx/compose/runtime/AnchoredGroupPath;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/MutableState;

    move-result-object v8

    invoke-interface {v0, p2}, Landroidx/compose/material/ripple/RippleTheme;->rippleAlpha(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/material/ripple/RippleAlpha;

    move-result-object v0

    invoke-static {v0, p2}, Landroidx/compose/runtime/AnchoredGroupPath;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/MutableState;

    move-result-object v9

    const v0, 0x13be9e37

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalView:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroidx/compose/material/ripple/Ripple_androidKt;->access$findNearestViewGroup(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v10

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p2, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-nez v0, :cond_1

    if-ne v1, v2, :cond_2

    :cond_1
    new-instance v5, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;

    iget-boolean v6, p0, Landroidx/compose/material/ripple/PlatformRipple;->bounded:Z

    iget v7, p0, Landroidx/compose/material/ripple/PlatformRipple;->radius:F

    invoke-direct/range {v5 .. v10}, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;-><init>(ZFLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroid/view/ViewGroup;)V

    invoke-virtual {p2, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v1, v5

    :cond_2
    check-cast v1, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;

    invoke-virtual {p2, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr p0, v0

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-nez p0, :cond_3

    if-ne v0, v2, :cond_4

    :cond_3
    new-instance v0, Landroidx/compose/material/ripple/Ripple$rememberUpdatedInstance$1$1;

    const/4 p0, 0x0

    invoke-direct {v0, p1, v1, p0}, Landroidx/compose/material/ripple/Ripple$rememberUpdatedInstance$1$1;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_4
    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v1, p1, v0, p2}, Landroidx/compose/runtime/AnchoredGroupPath;->LaunchedEffect(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/ComposerImpl;)V

    invoke-virtual {p2, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object v1
.end method
