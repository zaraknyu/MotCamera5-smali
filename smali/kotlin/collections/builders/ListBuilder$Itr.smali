.class public final Lkotlin/collections/builders/ListBuilder$Itr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# instance fields
.field public final synthetic $r8$classId:I

.field public expectedModCount:I

.field public index:I

.field public lastIndex:I

.field public final list:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/snapshots/SnapshotStateList;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->$r8$classId:I

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/collections/builders/ListBuilder$Itr;->list:Ljava/lang/Object;

    add-int/lit8 p2, p2, -0x1

    .line 14
    iput p2, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    const/4 p2, -0x1

    .line 15
    iput p2, p0, Lkotlin/collections/builders/ListBuilder$Itr;->lastIndex:I

    .line 16
    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getStructure$runtime_release()I

    move-result p1

    iput p1, p0, Lkotlin/collections/builders/ListBuilder$Itr;->expectedModCount:I

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/node/HitTestResult;II)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->$r8$classId:I

    and-int/lit8 p3, p3, 0x1

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    move p2, v0

    .line 1
    :cond_0
    iget-object p3, p1, Landroidx/compose/ui/node/HitTestResult;->values:Landroidx/collection/MutableObjectList;

    .line 2
    iget p3, p3, Landroidx/collection/MutableObjectList;->_size:I

    .line 3
    invoke-direct {p0, p1, p2, v0, p3}, Lkotlin/collections/builders/ListBuilder$Itr;-><init>(Landroidx/compose/ui/node/HitTestResult;III)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/node/HitTestResult;III)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->$r8$classId:I

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/collections/builders/ListBuilder$Itr;->list:Ljava/lang/Object;

    .line 10
    iput p2, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    .line 11
    iput p3, p0, Lkotlin/collections/builders/ListBuilder$Itr;->lastIndex:I

    .line 12
    iput p4, p0, Lkotlin/collections/builders/ListBuilder$Itr;->expectedModCount:I

    return-void
.end method

.method public constructor <init>(Lkotlin/collections/builders/ListBuilder$BuilderSubList;I)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->$r8$classId:I

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lkotlin/collections/builders/ListBuilder$Itr;->list:Ljava/lang/Object;

    .line 19
    iput p2, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    const/4 p2, -0x1

    .line 20
    iput p2, p0, Lkotlin/collections/builders/ListBuilder$Itr;->lastIndex:I

    .line 21
    invoke-static {p1}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->access$getModCount$p$s1462993667(Lkotlin/collections/builders/ListBuilder$BuilderSubList;)I

    move-result p1

    iput p1, p0, Lkotlin/collections/builders/ListBuilder$Itr;->expectedModCount:I

    return-void
.end method

.method public constructor <init>(Lkotlin/collections/builders/ListBuilder;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->$r8$classId:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lkotlin/collections/builders/ListBuilder$Itr;->list:Ljava/lang/Object;

    .line 6
    iput p2, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    const/4 p2, -0x1

    .line 7
    iput p2, p0, Lkotlin/collections/builders/ListBuilder$Itr;->lastIndex:I

    .line 8
    invoke-static {p1}, Lkotlin/collections/builders/ListBuilder;->access$getModCount$p$s-2084097795(Lkotlin/collections/builders/ListBuilder;)I

    move-result p1

    iput p1, p0, Lkotlin/collections/builders/ListBuilder$Itr;->expectedModCount:I

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lkotlin/collections/builders/ListBuilder$Itr;->checkForComodification$2()V

    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->list:Ljava/lang/Object;

    check-cast v0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;

    iget v1, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    invoke-virtual {v0, v1, p1}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->add(ILjava/lang/Object;)V

    const/4 p1, -0x1

    iput p1, p0, Lkotlin/collections/builders/ListBuilder$Itr;->lastIndex:I

    invoke-static {v0}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->access$getModCount$p$s1462993667(Lkotlin/collections/builders/ListBuilder$BuilderSubList;)I

    move-result p1

    iput p1, p0, Lkotlin/collections/builders/ListBuilder$Itr;->expectedModCount:I

    return-void

    :pswitch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Operation is not supported for read-only collection"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    invoke-virtual {p0}, Lkotlin/collections/builders/ListBuilder$Itr;->validateModification()V

    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->list:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    iget v1, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(ILjava/lang/Object;)V

    const/4 p1, -0x1

    iput p1, p0, Lkotlin/collections/builders/ListBuilder$Itr;->lastIndex:I

    iget p1, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getStructure$runtime_release()I

    move-result p1

    iput p1, p0, Lkotlin/collections/builders/ListBuilder$Itr;->expectedModCount:I

    return-void

    :pswitch_2
    invoke-virtual {p0}, Lkotlin/collections/builders/ListBuilder$Itr;->checkForComodification$3()V

    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->list:Ljava/lang/Object;

    check-cast v0, Lkotlin/collections/builders/ListBuilder;

    iget v1, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    invoke-virtual {v0, v1, p1}, Lkotlin/collections/builders/ListBuilder;->add(ILjava/lang/Object;)V

    const/4 p1, -0x1

    iput p1, p0, Lkotlin/collections/builders/ListBuilder$Itr;->lastIndex:I

    invoke-static {v0}, Lkotlin/collections/builders/ListBuilder;->access$getModCount$p$s-2084097795(Lkotlin/collections/builders/ListBuilder;)I

    move-result p1

    iput p1, p0, Lkotlin/collections/builders/ListBuilder$Itr;->expectedModCount:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public checkForComodification$2()V
    .locals 1

    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->list:Ljava/lang/Object;

    check-cast v0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;

    iget-object v0, v0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->root:Lkotlin/collections/builders/ListBuilder;

    invoke-static {v0}, Lkotlin/collections/builders/ListBuilder;->access$getModCount$p$s-2084097795(Lkotlin/collections/builders/ListBuilder;)I

    move-result v0

    iget p0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->expectedModCount:I

    if-ne v0, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method public checkForComodification$3()V
    .locals 1

    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->list:Ljava/lang/Object;

    check-cast v0, Lkotlin/collections/builders/ListBuilder;

    invoke-static {v0}, Lkotlin/collections/builders/ListBuilder;->access$getModCount$p$s-2084097795(Lkotlin/collections/builders/ListBuilder;)I

    move-result v0

    iget p0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->expectedModCount:I

    if-ne v0, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    iget-object p0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->list:Ljava/lang/Object;

    check-cast p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;

    iget p0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_0
    iget v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    iget p0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->expectedModCount:I

    if-ge v0, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0

    :pswitch_1
    iget v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    iget-object p0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->list:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    move-result p0

    const/4 v1, 0x1

    sub-int/2addr p0, v1

    if-ge v0, p0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    return v1

    :pswitch_2
    iget v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    iget-object p0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->list:Ljava/lang/Object;

    check-cast p0, Lkotlin/collections/builders/ListBuilder;

    iget p0, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    if-ge v0, p0, :cond_3

    const/4 p0, 0x1

    goto :goto_3

    :cond_3
    const/4 p0, 0x0

    :goto_3
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final hasPrevious()Z
    .locals 1

    iget v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget p0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_0
    iget v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    iget p0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->lastIndex:I

    if-le v0, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0

    :pswitch_1
    iget p0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    if-ltz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    return p0

    :pswitch_2
    iget p0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    if-lez p0, :cond_3

    const/4 p0, 0x1

    goto :goto_3

    :cond_3
    const/4 p0, 0x0

    :goto_3
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lkotlin/collections/builders/ListBuilder$Itr;->checkForComodification$2()V

    iget v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    iget-object v1, p0, Lkotlin/collections/builders/ListBuilder$Itr;->list:Ljava/lang/Object;

    check-cast v1, Lkotlin/collections/builders/ListBuilder$BuilderSubList;

    iget v2, v1, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    iput v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->lastIndex:I

    iget-object p0, v1, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->backing:[Ljava/lang/Object;

    iget v1, v1, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->offset:I

    add-int/2addr v1, v0

    aget-object p0, p0, v1

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :pswitch_0
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->list:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/node/HitTestResult;

    iget-object v0, v0, Landroidx/compose/ui/node/HitTestResult;->values:Landroidx/collection/MutableObjectList;

    iget v1, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    invoke-virtual {v0, v1}, Landroidx/collection/MutableObjectList;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type androidx.compose.ui.Modifier.Node"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/compose/ui/Modifier$Node;

    return-object p0

    :pswitch_1
    invoke-virtual {p0}, Lkotlin/collections/builders/ListBuilder$Itr;->validateModification()V

    iget v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->lastIndex:I

    iget-object v1, p0, Lkotlin/collections/builders/ListBuilder$Itr;->list:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    move-result v2

    invoke-static {v0, v2}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->access$validateRange(II)V

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    move-result-object v1

    iput v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    return-object v1

    :pswitch_2
    invoke-virtual {p0}, Lkotlin/collections/builders/ListBuilder$Itr;->checkForComodification$3()V

    iget v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    iget-object v1, p0, Lkotlin/collections/builders/ListBuilder$Itr;->list:Ljava/lang/Object;

    check-cast v1, Lkotlin/collections/builders/ListBuilder;

    iget v2, v1, Lkotlin/collections/builders/ListBuilder;->length:I

    if-ge v0, v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    iput v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->lastIndex:I

    iget-object p0, v1, Lkotlin/collections/builders/ListBuilder;->backing:[Ljava/lang/Object;

    aget-object p0, p0, v0

    return-object p0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final nextIndex()I
    .locals 1

    iget v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget p0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    return p0

    :pswitch_0
    iget v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    iget p0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->lastIndex:I

    sub-int/2addr v0, p0

    return v0

    :pswitch_1
    iget p0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    add-int/lit8 p0, p0, 0x1

    return p0

    :pswitch_2
    iget p0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final previous()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lkotlin/collections/builders/ListBuilder$Itr;->checkForComodification$2()V

    iget v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    iput v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->lastIndex:I

    iget-object p0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->list:Ljava/lang/Object;

    check-cast p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;

    iget-object v1, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->backing:[Ljava/lang/Object;

    iget p0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->offset:I

    add-int/2addr p0, v0

    aget-object p0, v1, p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :pswitch_0
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->list:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/node/HitTestResult;

    iget-object v0, v0, Landroidx/compose/ui/node/HitTestResult;->values:Landroidx/collection/MutableObjectList;

    iget v1, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    invoke-virtual {v0, v1}, Landroidx/collection/MutableObjectList;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type androidx.compose.ui.Modifier.Node"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/compose/ui/Modifier$Node;

    return-object p0

    :pswitch_1
    invoke-virtual {p0}, Lkotlin/collections/builders/ListBuilder$Itr;->validateModification()V

    iget v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    iget-object v1, p0, Lkotlin/collections/builders/ListBuilder$Itr;->list:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    move-result v2

    invoke-static {v0, v2}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->access$validateRange(II)V

    iget v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    iput v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->lastIndex:I

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    return-object v0

    :pswitch_2
    invoke-virtual {p0}, Lkotlin/collections/builders/ListBuilder$Itr;->checkForComodification$3()V

    iget v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    iput v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->lastIndex:I

    iget-object p0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->list:Ljava/lang/Object;

    check-cast p0, Lkotlin/collections/builders/ListBuilder;

    iget-object p0, p0, Lkotlin/collections/builders/ListBuilder;->backing:[Ljava/lang/Object;

    aget-object p0, p0, v0

    return-object p0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final previousIndex()I
    .locals 1

    iget v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget p0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    :goto_0
    add-int/lit8 p0, p0, -0x1

    return p0

    :pswitch_0
    iget v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    iget p0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->lastIndex:I

    sub-int/2addr v0, p0

    add-int/lit8 v0, v0, -0x1

    return v0

    :pswitch_1
    iget p0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    return p0

    :pswitch_2
    iget p0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 3

    iget v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->list:Ljava/lang/Object;

    check-cast v0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;

    invoke-virtual {p0}, Lkotlin/collections/builders/ListBuilder$Itr;->checkForComodification$2()V

    iget v1, p0, Lkotlin/collections/builders/ListBuilder$Itr;->lastIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->removeAt(I)Ljava/lang/Object;

    iget v1, p0, Lkotlin/collections/builders/ListBuilder$Itr;->lastIndex:I

    iput v1, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    iput v2, p0, Lkotlin/collections/builders/ListBuilder$Itr;->lastIndex:I

    invoke-static {v0}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->access$getModCount$p$s1462993667(Lkotlin/collections/builders/ListBuilder$BuilderSubList;)I

    move-result v0

    iput v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->expectedModCount:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Call next() or previous() before removing element from the iterator."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    invoke-virtual {p0}, Lkotlin/collections/builders/ListBuilder$Itr;->validateModification()V

    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->list:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    iget v1, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->remove(I)Ljava/lang/Object;

    iget v1, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    const/4 v2, -0x1

    add-int/2addr v1, v2

    iput v1, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    iput v2, p0, Lkotlin/collections/builders/ListBuilder$Itr;->lastIndex:I

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getStructure$runtime_release()I

    move-result v0

    iput v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->expectedModCount:I

    return-void

    :pswitch_2
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->list:Ljava/lang/Object;

    check-cast v0, Lkotlin/collections/builders/ListBuilder;

    invoke-virtual {p0}, Lkotlin/collections/builders/ListBuilder$Itr;->checkForComodification$3()V

    iget v1, p0, Lkotlin/collections/builders/ListBuilder$Itr;->lastIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->removeAt(I)Ljava/lang/Object;

    iget v1, p0, Lkotlin/collections/builders/ListBuilder$Itr;->lastIndex:I

    iput v1, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    iput v2, p0, Lkotlin/collections/builders/ListBuilder$Itr;->lastIndex:I

    invoke-static {v0}, Lkotlin/collections/builders/ListBuilder;->access$getModCount$p$s-2084097795(Lkotlin/collections/builders/ListBuilder;)I

    move-result v0

    iput v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->expectedModCount:I

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Call next() or previous() before removing element from the iterator."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lkotlin/collections/builders/ListBuilder$Itr;->checkForComodification$2()V

    iget v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->lastIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->list:Ljava/lang/Object;

    check-cast p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;

    invoke-virtual {p0, v0, p1}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Call next() or previous() before replacing element from the iterator."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Operation is not supported for read-only collection"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->list:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {p0}, Lkotlin/collections/builders/ListBuilder$Itr;->validateModification()V

    iget v1, p0, Lkotlin/collections/builders/ListBuilder$Itr;->lastIndex:I

    if-ltz v1, :cond_1

    invoke-virtual {v0, v1, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getStructure$runtime_release()I

    move-result p1

    iput p1, p0, Lkotlin/collections/builders/ListBuilder$Itr;->expectedModCount:I

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot call set before the first call to next() or previous() or immediately after a call to add() or remove()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    invoke-virtual {p0}, Lkotlin/collections/builders/ListBuilder$Itr;->checkForComodification$3()V

    iget v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->lastIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object p0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->list:Ljava/lang/Object;

    check-cast p0, Lkotlin/collections/builders/ListBuilder;

    invoke-virtual {p0, v0, p1}, Lkotlin/collections/builders/ListBuilder;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Call next() or previous() before replacing element from the iterator."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public validateModification()V
    .locals 1

    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->list:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getStructure$runtime_release()I

    move-result v0

    iget p0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->expectedModCount:I

    if-ne v0, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method
