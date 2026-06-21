.class public final Lkotlin/sequences/GeneratorSequence$iterator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# instance fields
.field public final synthetic $r8$classId:I

.field public nextItem:Ljava/lang/Object;

.field public nextState:I

.field public final this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/collection/MutableOrderedSetWrapper;)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lkotlin/sequences/GeneratorSequence$iterator$1;->$r8$classId:I

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lkotlin/sequences/GeneratorSequence$iterator$1;->this$0:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lkotlin/sequences/GeneratorSequence$iterator$1;->nextState:I

    .line 17
    new-instance v0, Landroidx/collection/MutableOrderedSetWrapper$iterator$1$iterator$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Landroidx/collection/MutableOrderedSetWrapper$iterator$1$iterator$1;-><init>(Landroidx/collection/MutableOrderedSetWrapper;Lkotlin/sequences/GeneratorSequence$iterator$1;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlin/sequences/SequencesKt__SequenceBuilderKt;->iterator(Lkotlin/jvm/functions/Function2;)Lkotlin/sequences/SequenceBuilderIterator;

    move-result-object p1

    iput-object p1, p0, Lkotlin/sequences/GeneratorSequence$iterator$1;->nextItem:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/collection/MutableSetWrapper;)V
    .locals 2

    const/4 v0, 0x2

    iput v0, p0, Lkotlin/sequences/GeneratorSequence$iterator$1;->$r8$classId:I

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lkotlin/sequences/GeneratorSequence$iterator$1;->this$0:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lkotlin/sequences/GeneratorSequence$iterator$1;->nextState:I

    .line 13
    new-instance v0, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;-><init>(Landroidx/collection/MutableSetWrapper;Lkotlin/sequences/GeneratorSequence$iterator$1;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlin/sequences/SequencesKt__SequenceBuilderKt;->iterator(Lkotlin/jvm/functions/Function2;)Lkotlin/sequences/SequenceBuilderIterator;

    move-result-object p1

    iput-object p1, p0, Lkotlin/sequences/GeneratorSequence$iterator$1;->nextItem:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lkotlin/sequences/GeneratorSequence$iterator$1;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/sequences/GeneratorSequence$iterator$1;->nextItem:Ljava/lang/Object;

    .line 2
    iput-object p2, p0, Lkotlin/sequences/GeneratorSequence$iterator$1;->this$0:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkotlin/io/FileTreeWalk;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lkotlin/sequences/GeneratorSequence$iterator$1;->$r8$classId:I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lkotlin/sequences/GeneratorSequence$iterator$1;->this$0:Ljava/lang/Object;

    const/4 p1, -0x2

    .line 9
    iput p1, p0, Lkotlin/sequences/GeneratorSequence$iterator$1;->nextState:I

    return-void
.end method

.method public constructor <init>(Lkotlin/sequences/TakeWhileSequence;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lkotlin/sequences/GeneratorSequence$iterator$1;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iget-object p1, p1, Lkotlin/sequences/TakeWhileSequence;->sequence:Ljava/lang/Object;

    check-cast p1, Lkotlin/sequences/Sequence;

    .line 5
    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lkotlin/sequences/GeneratorSequence$iterator$1;->this$0:Ljava/lang/Object;

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Lkotlin/sequences/GeneratorSequence$iterator$1;->nextState:I

    return-void
.end method


# virtual methods
.method public calcNext$1()V
    .locals 3

    iget-object v0, p0, Lkotlin/sequences/GeneratorSequence$iterator$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/io/FileTreeWalk;

    iget v1, p0, Lkotlin/sequences/GeneratorSequence$iterator$1;->nextState:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    iget-object v0, v0, Lkotlin/io/FileTreeWalk;->start:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lkotlin/io/FileTreeWalk;->direction:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lkotlin/sequences/GeneratorSequence$iterator$1;->nextItem:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lkotlin/sequences/GeneratorSequence$iterator$1;->nextItem:Ljava/lang/Object;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    iput v0, p0, Lkotlin/sequences/GeneratorSequence$iterator$1;->nextState:I

    return-void
.end method

.method public calcNext$2()V
    .locals 3

    iget-object v0, p0, Lkotlin/sequences/GeneratorSequence$iterator$1;->this$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    const-string v2, "it"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v1, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput v1, p0, Lkotlin/sequences/GeneratorSequence$iterator$1;->nextState:I

    iput-object v0, p0, Lkotlin/sequences/GeneratorSequence$iterator$1;->nextItem:Ljava/lang/Object;

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lkotlin/sequences/GeneratorSequence$iterator$1;->nextState:I

    return-void
.end method

.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lkotlin/sequences/GeneratorSequence$iterator$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lkotlin/sequences/GeneratorSequence$iterator$1;->nextState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lkotlin/sequences/GeneratorSequence$iterator$1;->calcNext$2()V

    :cond_0
    iget p0, p0, Lkotlin/sequences/GeneratorSequence$iterator$1;->nextState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget v0, p0, Lkotlin/sequences/GeneratorSequence$iterator$1;->nextState:I

    iget-object p0, p0, Lkotlin/sequences/GeneratorSequence$iterator$1;->this$0:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    if-ge v0, p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0

    :pswitch_1
    iget-object p0, p0, Lkotlin/sequences/GeneratorSequence$iterator$1;->nextItem:Ljava/lang/Object;

    check-cast p0, Lkotlin/sequences/SequenceBuilderIterator;

    invoke-virtual {p0}, Lkotlin/sequences/SequenceBuilderIterator;->hasNext()Z

    move-result p0

    return p0

    :pswitch_2
    iget-object p0, p0, Lkotlin/sequences/GeneratorSequence$iterator$1;->nextItem:Ljava/lang/Object;

    check-cast p0, Lkotlin/sequences/SequenceBuilderIterator;

    invoke-virtual {p0}, Lkotlin/sequences/SequenceBuilderIterator;->hasNext()Z

    move-result p0

    return p0

    :pswitch_3
    iget v0, p0, Lkotlin/sequences/GeneratorSequence$iterator$1;->nextState:I

    if-gez v0, :cond_3

    invoke-virtual {p0}, Lkotlin/sequences/GeneratorSequence$iterator$1;->calcNext$1()V

    :cond_3
    iget p0, p0, Lkotlin/sequences/GeneratorSequence$iterator$1;->nextState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lkotlin/sequences/GeneratorSequence$iterator$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lkotlin/sequences/GeneratorSequence$iterator$1;->nextState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lkotlin/sequences/GeneratorSequence$iterator$1;->calcNext$2()V

    :cond_0
    iget v0, p0, Lkotlin/sequences/GeneratorSequence$iterator$1;->nextState:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkotlin/sequences/GeneratorSequence$iterator$1;->nextItem:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, p0, Lkotlin/sequences/GeneratorSequence$iterator$1;->nextItem:Ljava/lang/Object;

    iput v1, p0, Lkotlin/sequences/GeneratorSequence$iterator$1;->nextState:I

    return-object v0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :pswitch_0
    invoke-virtual {p0}, Lkotlin/sequences/GeneratorSequence$iterator$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lkotlin/sequences/GeneratorSequence$iterator$1;->nextItem:Ljava/lang/Object;

    iget v1, p0, Lkotlin/sequences/GeneratorSequence$iterator$1;->nextState:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lkotlin/sequences/GeneratorSequence$iterator$1;->nextState:I

    iget-object v1, p0, Lkotlin/sequences/GeneratorSequence$iterator$1;->this$0:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast v1, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;

    iget-object v1, v1, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;->next:Ljava/lang/Object;

    iput-object v1, p0, Lkotlin/sequences/GeneratorSequence$iterator$1;->nextItem:Ljava/lang/Object;

    return-object v0

    :cond_2
    new-instance p0, Ljava/util/ConcurrentModificationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Hash code of an element ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ") has changed after it was added to the persistent set."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :pswitch_1
    iget-object p0, p0, Lkotlin/sequences/GeneratorSequence$iterator$1;->nextItem:Ljava/lang/Object;

    check-cast p0, Lkotlin/sequences/SequenceBuilderIterator;

    invoke-virtual {p0}, Lkotlin/sequences/SequenceBuilderIterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_2
    iget-object p0, p0, Lkotlin/sequences/GeneratorSequence$iterator$1;->nextItem:Ljava/lang/Object;

    check-cast p0, Lkotlin/sequences/SequenceBuilderIterator;

    invoke-virtual {p0}, Lkotlin/sequences/SequenceBuilderIterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_3
    iget v0, p0, Lkotlin/sequences/GeneratorSequence$iterator$1;->nextState:I

    if-gez v0, :cond_4

    invoke-virtual {p0}, Lkotlin/sequences/GeneratorSequence$iterator$1;->calcNext$1()V

    :cond_4
    iget v0, p0, Lkotlin/sequences/GeneratorSequence$iterator$1;->nextState:I

    if-eqz v0, :cond_5

    iget-object v0, p0, Lkotlin/sequences/GeneratorSequence$iterator$1;->nextItem:Ljava/lang/Object;

    const-string v1, "null cannot be cast to non-null type T of kotlin.sequences.GeneratorSequence"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, -0x1

    iput v1, p0, Lkotlin/sequences/GeneratorSequence$iterator$1;->nextState:I

    return-object v0

    :cond_5
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 3

    iget v0, p0, Lkotlin/sequences/GeneratorSequence$iterator$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    iget v0, p0, Lkotlin/sequences/GeneratorSequence$iterator$1;->nextState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v2, p0, Lkotlin/sequences/GeneratorSequence$iterator$1;->this$0:Ljava/lang/Object;

    check-cast v2, Landroidx/collection/MutableSetWrapper;

    iget-object v2, v2, Landroidx/collection/MutableSetWrapper;->parent:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v2, v0}, Landroidx/collection/MutableScatterSet;->removeElementAt(I)V

    iput v1, p0, Lkotlin/sequences/GeneratorSequence$iterator$1;->nextState:I

    :cond_0
    return-void

    :pswitch_2
    iget v0, p0, Lkotlin/sequences/GeneratorSequence$iterator$1;->nextState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v2, p0, Lkotlin/sequences/GeneratorSequence$iterator$1;->this$0:Ljava/lang/Object;

    check-cast v2, Landroidx/collection/MutableOrderedSetWrapper;

    iget-object v2, v2, Landroidx/collection/MutableOrderedSetWrapper;->parent:Landroidx/collection/MutableOrderedScatterSet;

    invoke-virtual {v2, v0}, Landroidx/collection/MutableOrderedScatterSet;->removeElementAt(I)V

    iput v1, p0, Lkotlin/sequences/GeneratorSequence$iterator$1;->nextState:I

    :cond_1
    return-void

    :pswitch_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
