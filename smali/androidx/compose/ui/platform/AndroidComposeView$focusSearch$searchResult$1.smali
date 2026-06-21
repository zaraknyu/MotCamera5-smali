.class public final Landroidx/compose/ui/platform/AndroidComposeView$focusSearch$searchResult$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $focusTarget:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;I)V
    .locals 0

    iput p2, p0, Landroidx/compose/ui/platform/AndroidComposeView$focusSearch$searchResult$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView$focusSearch$searchResult$1;->$focusTarget:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Landroidx/compose/ui/platform/AndroidComposeView$focusSearch$searchResult$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroidx/compose/ui/input/pointer/PointerHoverIconModifierNode;

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView$focusSearch$searchResult$1;->$focusTarget:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-boolean v1, p1, Landroidx/compose/ui/input/pointer/PointerHoverIconModifierNode;->cursorInBoundsOfNode:Z

    if-eqz v1, :cond_0

    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    :goto_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_0
    check-cast p1, Landroidx/compose/ui/node/TraversableNode;

    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    iget-boolean v0, v0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView$focusSearch$searchResult$1;->$focusTarget:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    const/4 p0, 0x1

    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Landroidx/compose/ui/node/TraversableNode;

    const-string v0, "null cannot be cast to non-null type androidx.compose.foundation.lazy.layout.TraversablePrefetchStateNode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/compose/foundation/lazy/layout/TraversablePrefetchStateNode;

    iget-object p1, p1, Landroidx/compose/foundation/lazy/layout/TraversablePrefetchStateNode;->prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView$focusSearch$searchResult$1;->$focusTarget:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    filled-new-array {p1}, [Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object p0, Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;->SkipSubtreeAndContinueTraversal:Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;

    return-object p0

    :pswitch_2
    check-cast p1, Landroidx/compose/ui/focus/FocusTargetNode;

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView$focusSearch$searchResult$1;->$focusTarget:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
