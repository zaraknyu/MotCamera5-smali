.class public final Landroidx/compose/ui/modifier/ModifierLocalManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final inserted:Landroidx/compose/runtime/collection/MutableVector;

.field public final insertedLocal:Landroidx/compose/runtime/collection/MutableVector;

.field public invalidated:Z

.field public final owner:Landroidx/compose/ui/platform/AndroidComposeView;

.field public final removed:Landroidx/compose/runtime/collection/MutableVector;

.field public final removedLocal:Landroidx/compose/runtime/collection/MutableVector;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/platform/AndroidComposeView;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->owner:Landroidx/compose/ui/platform/AndroidComposeView;

    new-instance p1, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v0, 0x10

    new-array v1, v0, [Landroidx/compose/ui/node/BackwardsCompatNode;

    invoke-direct {p1, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->inserted:Landroidx/compose/runtime/collection/MutableVector;

    new-instance p1, Landroidx/compose/runtime/collection/MutableVector;

    new-array v1, v0, [Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    invoke-direct {p1, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->insertedLocal:Landroidx/compose/runtime/collection/MutableVector;

    new-instance p1, Landroidx/compose/runtime/collection/MutableVector;

    new-array v1, v0, [Landroidx/compose/ui/node/LayoutNode;

    invoke-direct {p1, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->removed:Landroidx/compose/runtime/collection/MutableVector;

    new-instance p1, Landroidx/compose/runtime/collection/MutableVector;

    new-array v0, v0, [Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    invoke-direct {p1, v0}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->removedLocal:Landroidx/compose/runtime/collection/MutableVector;

    return-void
.end method

.method public static invalidateConsumersOfNodeForKey(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/modifier/ProvidableModifierLocal;Ljava/util/HashSet;)V
    .locals 10

    iget-object v0, p0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    iget-boolean v0, v0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "visitSubtreeIf called on an unattached node"

    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v1, 0x10

    new-array v2, v1, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v0, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    iget-object v2, p0, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    if-nez v2, :cond_1

    invoke-static {v0, p0}, Landroidx/compose/ui/node/HitTestResultKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :goto_0
    iget p0, v0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    if-eqz p0, :cond_c

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/Modifier$Node;

    iget v2, p0, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_b

    move-object v2, p0

    :goto_1
    if-eqz v2, :cond_b

    iget v3, v2, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_a

    const/4 v3, 0x0

    move-object v4, v2

    move-object v5, v3

    :goto_2
    if-eqz v4, :cond_a

    instance-of v6, v4, Landroidx/compose/ui/modifier/ModifierLocalModifierNode;

    if-eqz v6, :cond_3

    check-cast v4, Landroidx/compose/ui/modifier/ModifierLocalModifierNode;

    instance-of v6, v4, Landroidx/compose/ui/node/BackwardsCompatNode;

    if-eqz v6, :cond_2

    move-object v6, v4

    check-cast v6, Landroidx/compose/ui/node/BackwardsCompatNode;

    iget-object v7, v6, Landroidx/compose/ui/node/BackwardsCompatNode;->element:Landroidx/compose/ui/Modifier$Element;

    instance-of v7, v7, Landroidx/compose/ui/modifier/ModifierLocalConsumer;

    if-eqz v7, :cond_2

    iget-object v6, v6, Landroidx/compose/ui/node/BackwardsCompatNode;->readValues:Ljava/util/HashSet;

    invoke-virtual {v6, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {v4}, Landroidx/compose/ui/modifier/ModifierLocalModifierNode;->getProvidedValues()Landroidx/compose/ui/modifier/ModifierLocalMap;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroidx/compose/ui/modifier/ModifierLocalMap;->contains$ui_release(Landroidx/compose/ui/modifier/ProvidableModifierLocal;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_0

    :cond_3
    iget v6, v4, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit8 v6, v6, 0x20

    if-eqz v6, :cond_9

    instance-of v6, v4, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v6, :cond_9

    move-object v6, v4

    check-cast v6, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v6, v6, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    const/4 v7, 0x0

    :goto_3
    const/4 v8, 0x1

    if-eqz v6, :cond_8

    iget v9, v6, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit8 v9, v9, 0x20

    if-eqz v9, :cond_7

    add-int/lit8 v7, v7, 0x1

    if-ne v7, v8, :cond_4

    move-object v4, v6

    goto :goto_4

    :cond_4
    if-nez v5, :cond_5

    new-instance v5, Landroidx/compose/runtime/collection/MutableVector;

    new-array v8, v1, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v5, v8}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    move-object v4, v3

    :cond_6
    invoke-virtual {v5, v6}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_7
    :goto_4
    iget-object v6, v6, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_3

    :cond_8
    if-ne v7, v8, :cond_9

    goto :goto_2

    :cond_9
    invoke-static {v5}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    goto :goto_2

    :cond_a
    iget-object v2, v2, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_1

    :cond_b
    invoke-static {v0, p0}, Landroidx/compose/ui/node/HitTestResultKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    goto/16 :goto_0

    :cond_c
    return-void
.end method


# virtual methods
.method public final invalidate()V
    .locals 2

    iget-boolean v0, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->invalidated:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->invalidated:Z

    new-instance v0, Landroidx/compose/runtime/Pending$keyMap$2;

    const/16 v1, 0x17

    invoke-direct {v0, v1, p0}, Landroidx/compose/runtime/Pending$keyMap$2;-><init>(ILjava/lang/Object;)V

    iget-object p0, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->owner:Landroidx/compose/ui/platform/AndroidComposeView;

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->endApplyChangesListeners:Landroidx/collection/MutableObjectList;

    invoke-virtual {p0, v0}, Landroidx/collection/MutableObjectList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
