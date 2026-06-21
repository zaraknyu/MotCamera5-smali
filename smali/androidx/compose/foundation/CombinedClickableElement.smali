.class final Landroidx/compose/foundation/CombinedClickableElement;
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
        "Landroidx/compose/foundation/CombinedClickableElement;",
        "Landroidx/compose/ui/node/ModifierNodeElement;",
        "Landroidx/compose/foundation/CombinedClickableNode;",
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
.field public final interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

.field public final onClick:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/CombinedClickableElement;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    iput-object p2, p0, Landroidx/compose/foundation/CombinedClickableElement;->onClick:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final create()Landroidx/compose/ui/Modifier$Node;
    .locals 2

    new-instance v0, Landroidx/compose/foundation/CombinedClickableNode;

    iget-object v1, p0, Landroidx/compose/foundation/CombinedClickableElement;->onClick:Lkotlin/jvm/functions/Function0;

    iget-object p0, p0, Landroidx/compose/foundation/CombinedClickableElement;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    invoke-direct {v0, p0, v1}, Landroidx/compose/foundation/CombinedClickableNode;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const-class v1, Landroidx/compose/foundation/CombinedClickableElement;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    check-cast p1, Landroidx/compose/foundation/CombinedClickableElement;

    iget-object v1, p0, Landroidx/compose/foundation/CombinedClickableElement;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    iget-object v2, p1, Landroidx/compose/foundation/CombinedClickableElement;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object p0, p0, Landroidx/compose/foundation/CombinedClickableElement;->onClick:Lkotlin/jvm/functions/Function0;

    iget-object p1, p1, Landroidx/compose/foundation/CombinedClickableElement;->onClick:Lkotlin/jvm/functions/Function0;

    if-eq p0, p1, :cond_4

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/compose/foundation/CombinedClickableElement;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit16 v0, v0, 0x3c1

    const/16 v1, 0x745f

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-object p0, p0, Landroidx/compose/foundation/CombinedClickableElement;->onClick:Lkotlin/jvm/functions/Function0;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    const v0, 0xe1781

    mul-int/2addr p0, v0

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public final update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 6

    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/CombinedClickableNode;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean p1, v0, Landroidx/compose/foundation/AbstractClickableNode;->enabled:Z

    const/4 v3, 0x1

    if-eq p1, v3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/compose/foundation/CombinedClickableElement;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Landroidx/compose/foundation/CombinedClickableElement;->onClick:Lkotlin/jvm/functions/Function0;

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/foundation/AbstractClickableNode;->updateCommon-QzZPfjk(Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/foundation/IndicationNodeFactory;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;)V

    if-eqz p1, :cond_1

    iget-object p0, v0, Landroidx/compose/foundation/AbstractClickableNode;->pointerInputNode:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->resetPointerInputHandler()V

    :cond_1
    return-void
.end method
