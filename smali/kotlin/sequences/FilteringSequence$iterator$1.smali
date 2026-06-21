.class public final Lkotlin/sequences/FilteringSequence$iterator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# instance fields
.field public final synthetic $r8$classId:I

.field public final iterator:Ljava/util/Iterator;

.field public nextItem:Ljava/lang/Object;

.field public nextState:I

.field public final synthetic this$0:Lkotlin/sequences/Sequence;


# direct methods
.method public constructor <init>(Lkotlin/sequences/FilteringSequence;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lkotlin/sequences/FilteringSequence$iterator$1;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlin/sequences/FilteringSequence$iterator$1;->this$0:Lkotlin/sequences/Sequence;

    .line 3
    iget-object p1, p1, Lkotlin/sequences/FilteringSequence;->sequence:Lkotlin/sequences/Sequence;

    .line 4
    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lkotlin/sequences/FilteringSequence$iterator$1;->iterator:Ljava/util/Iterator;

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lkotlin/sequences/FilteringSequence$iterator$1;->nextState:I

    return-void
.end method

.method public constructor <init>(Lkotlin/sequences/FlatteningSequence;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lkotlin/sequences/FilteringSequence$iterator$1;->$r8$classId:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lkotlin/sequences/FilteringSequence$iterator$1;->this$0:Lkotlin/sequences/Sequence;

    .line 8
    iget-object p1, p1, Lkotlin/sequences/FlatteningSequence;->sequence:Lkotlin/sequences/Sequence;

    .line 9
    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lkotlin/sequences/FilteringSequence$iterator$1;->iterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public calcNext()V
    .locals 4

    iget-object v0, p0, Lkotlin/sequences/FilteringSequence$iterator$1;->this$0:Lkotlin/sequences/Sequence;

    check-cast v0, Lkotlin/sequences/FilteringSequence;

    :cond_0
    iget-object v1, p0, Lkotlin/sequences/FilteringSequence$iterator$1;->iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v0, Lkotlin/sequences/FilteringSequence;->predicate:Lkotlin/jvm/functions/Function1;

    invoke-interface {v2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-boolean v3, v0, Lkotlin/sequences/FilteringSequence;->sendWhen:Z

    if-ne v2, v3, :cond_0

    iput-object v1, p0, Lkotlin/sequences/FilteringSequence$iterator$1;->nextItem:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lkotlin/sequences/FilteringSequence$iterator$1;->nextState:I

    return-void

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lkotlin/sequences/FilteringSequence$iterator$1;->nextState:I

    return-void
.end method

.method public ensureItemIterator()Z
    .locals 4

    iget-object v0, p0, Lkotlin/sequences/FilteringSequence$iterator$1;->nextItem:Ljava/lang/Object;

    check-cast v0, Ljava/util/Iterator;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iput v1, p0, Lkotlin/sequences/FilteringSequence$iterator$1;->nextState:I

    return v1

    :cond_0
    iget-object v0, p0, Lkotlin/sequences/FilteringSequence$iterator$1;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lkotlin/sequences/FilteringSequence$iterator$1;->this$0:Lkotlin/sequences/Sequence;

    check-cast v2, Lkotlin/sequences/FlatteningSequence;

    iget-object v3, v2, Lkotlin/sequences/FlatteningSequence;->iterator:Lkotlin/jvm/functions/Function1;

    iget-object v2, v2, Lkotlin/sequences/FlatteningSequence;->transformer:Lkotlin/jvm/functions/Function1;

    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v0, p0, Lkotlin/sequences/FilteringSequence$iterator$1;->nextItem:Ljava/lang/Object;

    iput v1, p0, Lkotlin/sequences/FilteringSequence$iterator$1;->nextState:I

    return v1

    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lkotlin/sequences/FilteringSequence$iterator$1;->nextState:I

    const/4 v0, 0x0

    iput-object v0, p0, Lkotlin/sequences/FilteringSequence$iterator$1;->nextItem:Ljava/lang/Object;

    const/4 p0, 0x0

    return p0
.end method

.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lkotlin/sequences/FilteringSequence$iterator$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lkotlin/sequences/FilteringSequence$iterator$1;->nextState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lkotlin/sequences/FilteringSequence$iterator$1;->ensureItemIterator()Z

    move-result v1

    :goto_0
    return v1

    :pswitch_0
    iget v0, p0, Lkotlin/sequences/FilteringSequence$iterator$1;->nextState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lkotlin/sequences/FilteringSequence$iterator$1;->calcNext()V

    :cond_2
    iget p0, p0, Lkotlin/sequences/FilteringSequence$iterator$1;->nextState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lkotlin/sequences/FilteringSequence$iterator$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lkotlin/sequences/FilteringSequence$iterator$1;->nextState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lkotlin/sequences/FilteringSequence$iterator$1;->ensureItemIterator()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lkotlin/sequences/FilteringSequence$iterator$1;->nextState:I

    iget-object p0, p0, Lkotlin/sequences/FilteringSequence$iterator$1;->nextItem:Ljava/lang/Object;

    check-cast p0, Ljava/util/Iterator;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :pswitch_0
    iget v0, p0, Lkotlin/sequences/FilteringSequence$iterator$1;->nextState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lkotlin/sequences/FilteringSequence$iterator$1;->calcNext()V

    :cond_3
    iget v0, p0, Lkotlin/sequences/FilteringSequence$iterator$1;->nextState:I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lkotlin/sequences/FilteringSequence$iterator$1;->nextItem:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, p0, Lkotlin/sequences/FilteringSequence$iterator$1;->nextItem:Ljava/lang/Object;

    iput v1, p0, Lkotlin/sequences/FilteringSequence$iterator$1;->nextState:I

    return-object v0

    :cond_4
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 1

    iget p0, p0, Lkotlin/sequences/FilteringSequence$iterator$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
