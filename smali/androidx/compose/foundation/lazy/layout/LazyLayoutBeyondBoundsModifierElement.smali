.class final Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierElement;
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
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierElement;",
        "Landroidx/compose/ui/node/ModifierNodeElement;",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierNode;",
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
.field public final beyondBoundsInfo:Landroidx/room/ObservedTableVersions;

.field public final orientation:Landroidx/compose/foundation/gestures/Orientation;

.field public final state:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;Landroidx/room/ObservedTableVersions;Landroidx/compose/foundation/gestures/Orientation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierElement;->state:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;

    iput-object p2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierElement;->beyondBoundsInfo:Landroidx/room/ObservedTableVersions;

    iput-object p3, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierElement;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    return-void
.end method


# virtual methods
.method public final create()Landroidx/compose/ui/Modifier$Node;
    .locals 2

    new-instance v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierNode;

    invoke-direct {v0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierElement;->state:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;

    iput-object v1, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierNode;->state:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;

    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierElement;->beyondBoundsInfo:Landroidx/room/ObservedTableVersions;

    iput-object v1, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierNode;->beyondBoundsInfo:Landroidx/room/ObservedTableVersions;

    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierElement;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    iput-object p0, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierElement;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierElement;

    iget-object v0, p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierElement;->state:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;

    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierElement;->state:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierElement;->beyondBoundsInfo:Landroidx/room/ObservedTableVersions;

    iget-object v1, p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierElement;->beyondBoundsInfo:Landroidx/room/ObservedTableVersions;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierElement;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    iget-object p1, p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierElement;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    if-eq p0, p1, :cond_4

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

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierElement;->state:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierElement;->beyondBoundsInfo:Landroidx/room/ObservedTableVersions;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierElement;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 1

    check-cast p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierNode;

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierElement;->state:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;

    iput-object v0, p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierNode;->state:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierElement;->beyondBoundsInfo:Landroidx/room/ObservedTableVersions;

    iput-object v0, p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierNode;->beyondBoundsInfo:Landroidx/room/ObservedTableVersions;

    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierElement;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    iput-object p0, p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    return-void
.end method
