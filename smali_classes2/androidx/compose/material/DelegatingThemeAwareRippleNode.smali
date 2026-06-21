.class public final Landroidx/compose/material/DelegatingThemeAwareRippleNode;
.super Landroidx/compose/ui/node/DelegatingNode;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;
.implements Landroidx/compose/ui/node/ObserverModifierNode;


# instance fields
.field public final bounded:Z

.field public final color:Landroidx/compose/ui/graphics/ColorProducer;

.field public final interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

.field public final radius:F

.field public rippleNode:Landroidx/compose/material/ripple/AndroidRippleNode;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;ZLandroidx/compose/ui/graphics/ColorProducer;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/node/DelegatingNode;-><init>()V

    iput-object p1, p0, Landroidx/compose/material/DelegatingThemeAwareRippleNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    iput-boolean p2, p0, Landroidx/compose/material/DelegatingThemeAwareRippleNode;->bounded:Z

    const/high16 p1, 0x7fc00000    # Float.NaN

    iput p1, p0, Landroidx/compose/material/DelegatingThemeAwareRippleNode;->radius:F

    iput-object p3, p0, Landroidx/compose/material/DelegatingThemeAwareRippleNode;->color:Landroidx/compose/ui/graphics/ColorProducer;

    return-void
.end method


# virtual methods
.method public final onAttach()V
    .locals 2

    new-instance v0, Landroidx/compose/material/DelegatingThemeAwareRippleNode$updateConfiguration$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/compose/material/DelegatingThemeAwareRippleNode$updateConfiguration$1;-><init>(Landroidx/compose/material/DelegatingThemeAwareRippleNode;I)V

    invoke-static {p0, v0}, Landroidx/compose/ui/node/HitTestResultKt;->observeReads(Landroidx/compose/ui/Modifier$Node;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final onObservedReadsChanged()V
    .locals 2

    new-instance v0, Landroidx/compose/material/DelegatingThemeAwareRippleNode$updateConfiguration$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/compose/material/DelegatingThemeAwareRippleNode$updateConfiguration$1;-><init>(Landroidx/compose/material/DelegatingThemeAwareRippleNode;I)V

    invoke-static {p0, v0}, Landroidx/compose/ui/node/HitTestResultKt;->observeReads(Landroidx/compose/ui/Modifier$Node;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
