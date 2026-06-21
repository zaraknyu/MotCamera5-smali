.class final Landroidx/compose/foundation/ClickableElement;
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
        "Landroidx/compose/foundation/ClickableElement;",
        "Landroidx/compose/ui/node/ModifierNodeElement;",
        "Landroidx/compose/foundation/ClickableNode;",
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
.field public final enabled:Z

.field public final indicationNodeFactory:Landroidx/compose/foundation/IndicationNodeFactory;

.field public final interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

.field public final onClick:Lkotlin/jvm/functions/Function0;

.field public final role:Landroidx/compose/ui/semantics/Role;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/foundation/IndicationNodeFactory;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/ClickableElement;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    iput-object p2, p0, Landroidx/compose/foundation/ClickableElement;->indicationNodeFactory:Landroidx/compose/foundation/IndicationNodeFactory;

    iput-boolean p3, p0, Landroidx/compose/foundation/ClickableElement;->enabled:Z

    iput-object p4, p0, Landroidx/compose/foundation/ClickableElement;->role:Landroidx/compose/ui/semantics/Role;

    iput-object p5, p0, Landroidx/compose/foundation/ClickableElement;->onClick:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final create()Landroidx/compose/ui/Modifier$Node;
    .locals 6

    new-instance v0, Landroidx/compose/foundation/ClickableNode;

    iget-object v4, p0, Landroidx/compose/foundation/ClickableElement;->role:Landroidx/compose/ui/semantics/Role;

    iget-object v5, p0, Landroidx/compose/foundation/ClickableElement;->onClick:Lkotlin/jvm/functions/Function0;

    iget-object v1, p0, Landroidx/compose/foundation/ClickableElement;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    iget-object v2, p0, Landroidx/compose/foundation/ClickableElement;->indicationNodeFactory:Landroidx/compose/foundation/IndicationNodeFactory;

    iget-boolean v3, p0, Landroidx/compose/foundation/ClickableElement;->enabled:Z

    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/AbstractClickableNode;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/foundation/IndicationNodeFactory;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const-class v0, Landroidx/compose/foundation/ClickableElement;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    check-cast p1, Landroidx/compose/foundation/ClickableElement;

    iget-object v0, p0, Landroidx/compose/foundation/ClickableElement;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    iget-object v1, p1, Landroidx/compose/foundation/ClickableElement;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroidx/compose/foundation/ClickableElement;->indicationNodeFactory:Landroidx/compose/foundation/IndicationNodeFactory;

    iget-object v1, p1, Landroidx/compose/foundation/ClickableElement;->indicationNodeFactory:Landroidx/compose/foundation/IndicationNodeFactory;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Landroidx/compose/foundation/ClickableElement;->enabled:Z

    iget-boolean v1, p1, Landroidx/compose/foundation/ClickableElement;->enabled:Z

    if-eq v0, v1, :cond_5

    goto :goto_0

    :cond_5
    iget-object v0, p0, Landroidx/compose/foundation/ClickableElement;->role:Landroidx/compose/ui/semantics/Role;

    iget-object v1, p1, Landroidx/compose/foundation/ClickableElement;->role:Landroidx/compose/ui/semantics/Role;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    iget-object p0, p0, Landroidx/compose/foundation/ClickableElement;->onClick:Lkotlin/jvm/functions/Function0;

    iget-object p1, p1, Landroidx/compose/foundation/ClickableElement;->onClick:Lkotlin/jvm/functions/Function0;

    if-eq p0, p1, :cond_7

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_7
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/compose/foundation/ClickableElement;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Landroidx/compose/foundation/ClickableElement;->indicationNodeFactory:Landroidx/compose/foundation/IndicationNodeFactory;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroidx/compose/foundation/IndicationNodeFactory;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v2, p0, Landroidx/compose/foundation/ClickableElement;->enabled:Z

    const/16 v3, 0x3c1

    invoke-static {v1, v3, v2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v1

    iget-object v2, p0, Landroidx/compose/foundation/ClickableElement;->role:Landroidx/compose/ui/semantics/Role;

    if-eqz v2, :cond_2

    iget v0, v2, Landroidx/compose/ui/semantics/Role;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    :cond_2
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Landroidx/compose/foundation/ClickableElement;->onClick:Lkotlin/jvm/functions/Function0;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 6

    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/ClickableNode;

    iget-object v4, p0, Landroidx/compose/foundation/ClickableElement;->role:Landroidx/compose/ui/semantics/Role;

    iget-object v5, p0, Landroidx/compose/foundation/ClickableElement;->onClick:Lkotlin/jvm/functions/Function0;

    iget-object v1, p0, Landroidx/compose/foundation/ClickableElement;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    iget-object v2, p0, Landroidx/compose/foundation/ClickableElement;->indicationNodeFactory:Landroidx/compose/foundation/IndicationNodeFactory;

    iget-boolean v3, p0, Landroidx/compose/foundation/ClickableElement;->enabled:Z

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/foundation/AbstractClickableNode;->updateCommon-QzZPfjk(Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/foundation/IndicationNodeFactory;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
