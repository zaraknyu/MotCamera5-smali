.class public final Landroidx/compose/material/DelegatingThemeAwareRippleNode$updateConfiguration$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/compose/material/DelegatingThemeAwareRippleNode;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material/DelegatingThemeAwareRippleNode;I)V
    .locals 0

    iput p2, p0, Landroidx/compose/material/DelegatingThemeAwareRippleNode$updateConfiguration$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/material/DelegatingThemeAwareRippleNode$updateConfiguration$1;->this$0:Landroidx/compose/material/DelegatingThemeAwareRippleNode;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    iget v0, p0, Landroidx/compose/material/DelegatingThemeAwareRippleNode$updateConfiguration$1;->$r8$classId:I

    iget-object p0, p0, Landroidx/compose/material/DelegatingThemeAwareRippleNode$updateConfiguration$1;->this$0:Landroidx/compose/material/DelegatingThemeAwareRippleNode;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Landroidx/compose/material/RippleKt;->LocalRippleConfiguration:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-static {p0, v0}, Landroidx/compose/ui/node/HitTestResultKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/material/RippleConfiguration;

    sget-object v0, Landroidx/compose/material/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-static {p0, v0}, Landroidx/compose/ui/node/HitTestResultKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/graphics/Color;

    iget-wide v0, v0, Landroidx/compose/ui/graphics/Color;->value:J

    sget-object v2, Landroidx/compose/material/ColorsKt;->LocalColors:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-static {p0, v2}, Landroidx/compose/ui/node/HitTestResultKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/material/Colors;

    invoke-virtual {p0}, Landroidx/compose/material/Colors;->isLight()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Brush;->luminance-8_81llA(J)F

    move-result p0

    float-to-double v0, p0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double p0, v0, v2

    if-lez p0, :cond_0

    sget-object p0, Landroidx/compose/material/RippleKt;->LightThemeHighContrastRippleAlpha:Landroidx/compose/material/ripple/RippleAlpha;

    goto :goto_0

    :cond_0
    sget-object p0, Landroidx/compose/material/RippleKt;->LightThemeLowContrastRippleAlpha:Landroidx/compose/material/ripple/RippleAlpha;

    goto :goto_0

    :cond_1
    sget-object p0, Landroidx/compose/material/RippleKt;->DarkThemeRippleAlpha:Landroidx/compose/material/ripple/RippleAlpha;

    :goto_0
    return-object p0

    :pswitch_0
    sget-object v0, Landroidx/compose/material/RippleKt;->LocalRippleConfiguration:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-static {p0, v0}, Landroidx/compose/ui/node/HitTestResultKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/material/RippleConfiguration;

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/compose/material/DelegatingThemeAwareRippleNode;->rippleNode:Landroidx/compose/material/ripple/AndroidRippleNode;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/DelegatingNode;->undelegate(Landroidx/compose/ui/node/DelegatableNode;)V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/material/DelegatingThemeAwareRippleNode;->rippleNode:Landroidx/compose/material/ripple/AndroidRippleNode;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroidx/compose/material/DelegatingThemeAwareRippleNode;->rippleNode:Landroidx/compose/material/ripple/AndroidRippleNode;

    if-nez v0, :cond_4

    new-instance v5, La/f;

    const/4 v0, 0x1

    invoke-direct {v5, v0, p0}, La/f;-><init>(ILjava/lang/Object;)V

    new-instance v6, Landroidx/compose/material/DelegatingThemeAwareRippleNode$updateConfiguration$1;

    invoke-direct {v6, p0, v0}, Landroidx/compose/material/DelegatingThemeAwareRippleNode$updateConfiguration$1;-><init>(Landroidx/compose/material/DelegatingThemeAwareRippleNode;I)V

    iget-object v2, p0, Landroidx/compose/material/DelegatingThemeAwareRippleNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    iget-boolean v3, p0, Landroidx/compose/material/DelegatingThemeAwareRippleNode;->bounded:Z

    iget v4, p0, Landroidx/compose/material/DelegatingThemeAwareRippleNode;->radius:F

    sget-object v0, Landroidx/compose/material/ripple/RippleKt;->DefaultTweenSpec:Landroidx/compose/animation/core/TweenSpec;

    new-instance v1, Landroidx/compose/material/ripple/AndroidRippleNode;

    invoke-direct/range {v1 .. v6}, Landroidx/compose/material/ripple/AndroidRippleNode;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;ZFLandroidx/compose/ui/graphics/ColorProducer;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0, v1}, Landroidx/compose/ui/node/DelegatingNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    iput-object v1, p0, Landroidx/compose/material/DelegatingThemeAwareRippleNode;->rippleNode:Landroidx/compose/material/ripple/AndroidRippleNode;

    :cond_4
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
