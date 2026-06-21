.class public final Landroidx/compose/material3/DelegatingThemeAwareRippleNode$updateConfiguration$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/compose/material3/DelegatingThemeAwareRippleNode;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/DelegatingThemeAwareRippleNode;I)V
    .locals 0

    iput p2, p0, Landroidx/compose/material3/DelegatingThemeAwareRippleNode$updateConfiguration$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/material3/DelegatingThemeAwareRippleNode$updateConfiguration$1;->this$0:Landroidx/compose/material3/DelegatingThemeAwareRippleNode;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    iget v0, p0, Landroidx/compose/material3/DelegatingThemeAwareRippleNode$updateConfiguration$1;->$r8$classId:I

    iget-object p0, p0, Landroidx/compose/material3/DelegatingThemeAwareRippleNode$updateConfiguration$1;->this$0:Landroidx/compose/material3/DelegatingThemeAwareRippleNode;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Landroidx/compose/material3/RippleKt;->LocalRippleConfiguration:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-static {p0, v0}, Landroidx/compose/ui/node/HitTestResultKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/material3/RippleConfiguration;

    sget-object p0, Landroidx/compose/material3/ButtonKt;->RippleAlpha:Landroidx/compose/material/ripple/RippleAlpha;

    return-object p0

    :pswitch_0
    sget-object v0, Landroidx/compose/material3/RippleKt;->LocalRippleConfiguration:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-static {p0, v0}, Landroidx/compose/ui/node/HitTestResultKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/material3/RippleConfiguration;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/material3/DelegatingThemeAwareRippleNode;->rippleNode:Landroidx/compose/material/ripple/AndroidRippleNode;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/DelegatingNode;->undelegate(Landroidx/compose/ui/node/DelegatableNode;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/material3/DelegatingThemeAwareRippleNode;->rippleNode:Landroidx/compose/material/ripple/AndroidRippleNode;

    if-nez v0, :cond_1

    new-instance v5, Lcom/google/android/gms/tasks/zzad;

    const/4 v0, 0x7

    invoke-direct {v5, v0, p0}, Lcom/google/android/gms/tasks/zzad;-><init>(ILjava/lang/Object;)V

    new-instance v6, Landroidx/compose/material3/DelegatingThemeAwareRippleNode$updateConfiguration$1;

    const/4 v0, 0x1

    invoke-direct {v6, p0, v0}, Landroidx/compose/material3/DelegatingThemeAwareRippleNode$updateConfiguration$1;-><init>(Landroidx/compose/material3/DelegatingThemeAwareRippleNode;I)V

    iget-object v2, p0, Landroidx/compose/material3/DelegatingThemeAwareRippleNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    iget-boolean v3, p0, Landroidx/compose/material3/DelegatingThemeAwareRippleNode;->bounded:Z

    iget v4, p0, Landroidx/compose/material3/DelegatingThemeAwareRippleNode;->radius:F

    sget-object v0, Landroidx/compose/material/ripple/RippleKt;->DefaultTweenSpec:Landroidx/compose/animation/core/TweenSpec;

    new-instance v1, Landroidx/compose/material/ripple/AndroidRippleNode;

    invoke-direct/range {v1 .. v6}, Landroidx/compose/material/ripple/AndroidRippleNode;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;ZFLandroidx/compose/ui/graphics/ColorProducer;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0, v1}, Landroidx/compose/ui/node/DelegatingNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    iput-object v1, p0, Landroidx/compose/material3/DelegatingThemeAwareRippleNode;->rippleNode:Landroidx/compose/material/ripple/AndroidRippleNode;

    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
