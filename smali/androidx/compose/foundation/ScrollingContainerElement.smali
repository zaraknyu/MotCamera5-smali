.class final Landroidx/compose/foundation/ScrollingContainerElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a8\u0006\u0003"
    }
    d2 = {
        "Landroidx/compose/foundation/ScrollingContainerElement;",
        "Landroidx/compose/ui/node/ModifierNodeElement;",
        "Landroidx/compose/foundation/ScrollingContainerNode;",
        "foundation_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final bringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

.field public final enabled:Z

.field public final flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

.field public final interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

.field public final orientation:Landroidx/compose/foundation/gestures/Orientation;

.field public final overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

.field public final state:Landroidx/compose/foundation/gestures/ScrollableState;

.field public final useLocalOverscrollFactory:Z


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/gestures/BringIntoViewSpec;Landroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Landroidx/compose/foundation/ScrollingContainerElement;->state:Landroidx/compose/foundation/gestures/ScrollableState;

    iput-object p4, p0, Landroidx/compose/foundation/ScrollingContainerElement;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    iput-boolean p7, p0, Landroidx/compose/foundation/ScrollingContainerElement;->enabled:Z

    iput-object p3, p0, Landroidx/compose/foundation/ScrollingContainerElement;->flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    iput-object p6, p0, Landroidx/compose/foundation/ScrollingContainerElement;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    iput-object p2, p0, Landroidx/compose/foundation/ScrollingContainerElement;->bringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    iput-boolean p8, p0, Landroidx/compose/foundation/ScrollingContainerElement;->useLocalOverscrollFactory:Z

    iput-object p1, p0, Landroidx/compose/foundation/ScrollingContainerElement;->overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    return-void
.end method


# virtual methods
.method public final create()Landroidx/compose/ui/Modifier$Node;
    .locals 2

    new-instance v0, Landroidx/compose/foundation/ScrollingContainerNode;

    invoke-direct {v0}, Landroidx/compose/ui/node/DelegatingNode;-><init>()V

    iget-object v1, p0, Landroidx/compose/foundation/ScrollingContainerElement;->state:Landroidx/compose/foundation/gestures/ScrollableState;

    iput-object v1, v0, Landroidx/compose/foundation/ScrollingContainerNode;->state:Landroidx/compose/foundation/gestures/ScrollableState;

    iget-object v1, p0, Landroidx/compose/foundation/ScrollingContainerElement;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    iput-object v1, v0, Landroidx/compose/foundation/ScrollingContainerNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    iget-boolean v1, p0, Landroidx/compose/foundation/ScrollingContainerElement;->enabled:Z

    iput-boolean v1, v0, Landroidx/compose/foundation/ScrollingContainerNode;->enabled:Z

    iget-object v1, p0, Landroidx/compose/foundation/ScrollingContainerElement;->flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    iput-object v1, v0, Landroidx/compose/foundation/ScrollingContainerNode;->flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    iget-object v1, p0, Landroidx/compose/foundation/ScrollingContainerElement;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    iput-object v1, v0, Landroidx/compose/foundation/ScrollingContainerNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    iget-object v1, p0, Landroidx/compose/foundation/ScrollingContainerElement;->bringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    iput-object v1, v0, Landroidx/compose/foundation/ScrollingContainerNode;->bringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    iget-boolean v1, p0, Landroidx/compose/foundation/ScrollingContainerElement;->useLocalOverscrollFactory:Z

    iput-boolean v1, v0, Landroidx/compose/foundation/ScrollingContainerNode;->useLocalOverscrollFactory:Z

    iget-object p0, p0, Landroidx/compose/foundation/ScrollingContainerElement;->overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    iput-object p0, v0, Landroidx/compose/foundation/ScrollingContainerNode;->userProvidedOverscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_a

    const-class v0, Landroidx/compose/foundation/ScrollingContainerElement;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Landroidx/compose/foundation/ScrollingContainerElement;

    iget-object v0, p0, Landroidx/compose/foundation/ScrollingContainerElement;->state:Landroidx/compose/foundation/gestures/ScrollableState;

    iget-object v1, p1, Landroidx/compose/foundation/ScrollingContainerElement;->state:Landroidx/compose/foundation/gestures/ScrollableState;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroidx/compose/foundation/ScrollingContainerElement;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    iget-object v1, p1, Landroidx/compose/foundation/ScrollingContainerElement;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    if-eq v0, v1, :cond_3

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Landroidx/compose/foundation/ScrollingContainerElement;->enabled:Z

    iget-boolean v1, p1, Landroidx/compose/foundation/ScrollingContainerElement;->enabled:Z

    if-eq v0, v1, :cond_4

    goto :goto_1

    :cond_4
    iget-object v0, p0, Landroidx/compose/foundation/ScrollingContainerElement;->flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    iget-object v1, p1, Landroidx/compose/foundation/ScrollingContainerElement;->flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    iget-object v0, p0, Landroidx/compose/foundation/ScrollingContainerElement;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    iget-object v1, p1, Landroidx/compose/foundation/ScrollingContainerElement;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    iget-object v0, p0, Landroidx/compose/foundation/ScrollingContainerElement;->bringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    iget-object v1, p1, Landroidx/compose/foundation/ScrollingContainerElement;->bringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_1

    :cond_7
    iget-boolean v0, p0, Landroidx/compose/foundation/ScrollingContainerElement;->useLocalOverscrollFactory:Z

    iget-boolean v1, p1, Landroidx/compose/foundation/ScrollingContainerElement;->useLocalOverscrollFactory:Z

    if-eq v0, v1, :cond_8

    goto :goto_1

    :cond_8
    iget-object p0, p0, Landroidx/compose/foundation/ScrollingContainerElement;->overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    iget-object p1, p1, Landroidx/compose/foundation/ScrollingContainerElement;->overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_1

    :cond_9
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_a
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Landroidx/compose/foundation/ScrollingContainerElement;->state:Landroidx/compose/foundation/gestures/ScrollableState;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/compose/foundation/ScrollingContainerElement;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-boolean v0, p0, Landroidx/compose/foundation/ScrollingContainerElement;->enabled:Z

    invoke-static {v2, v1, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-object v3, p0, Landroidx/compose/foundation/ScrollingContainerElement;->flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Landroidx/compose/foundation/ScrollingContainerElement;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Landroidx/compose/foundation/ScrollingContainerElement;->bringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-boolean v3, p0, Landroidx/compose/foundation/ScrollingContainerElement;->useLocalOverscrollFactory:Z

    invoke-static {v0, v1, v3}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-object p0, p0, Landroidx/compose/foundation/ScrollingContainerElement;->overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_3
    add-int/2addr v0, v2

    return v0
.end method

.method public final update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 9

    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/ScrollingContainerNode;

    iget-object v6, p0, Landroidx/compose/foundation/ScrollingContainerElement;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    iget-object v2, p0, Landroidx/compose/foundation/ScrollingContainerElement;->bringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    iget-object v1, p0, Landroidx/compose/foundation/ScrollingContainerElement;->overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    iget-object v3, p0, Landroidx/compose/foundation/ScrollingContainerElement;->flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    iget-object v4, p0, Landroidx/compose/foundation/ScrollingContainerElement;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    iget-object v5, p0, Landroidx/compose/foundation/ScrollingContainerElement;->state:Landroidx/compose/foundation/gestures/ScrollableState;

    iget-boolean v7, p0, Landroidx/compose/foundation/ScrollingContainerElement;->useLocalOverscrollFactory:Z

    iget-boolean v8, p0, Landroidx/compose/foundation/ScrollingContainerElement;->enabled:Z

    invoke-virtual/range {v0 .. v8}, Landroidx/compose/foundation/ScrollingContainerNode;->update(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/gestures/BringIntoViewSpec;Landroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;ZZ)V

    return-void
.end method
