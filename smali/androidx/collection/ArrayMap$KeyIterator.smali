.class public final Landroidx/collection/ArrayMap$KeyIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# instance fields
.field public final synthetic $r8$classId:I

.field public canRemove:Z

.field public index:I

.field public size:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroidx/collection/ArrayMap$KeyIterator;->size:I

    return-void
.end method

.method public constructor <init>(Landroidx/collection/ArrayMap;I)V
    .locals 0

    iput p2, p0, Landroidx/collection/ArrayMap$KeyIterator;->$r8$classId:I

    packed-switch p2, :pswitch_data_0

    .line 6
    iput-object p1, p0, Landroidx/collection/ArrayMap$KeyIterator;->this$0:Ljava/lang/Object;

    .line 7
    iget p1, p1, Landroidx/collection/SimpleArrayMap;->size:I

    .line 8
    invoke-direct {p0, p1}, Landroidx/collection/ArrayMap$KeyIterator;-><init>(I)V

    return-void

    .line 9
    :pswitch_0
    iput-object p1, p0, Landroidx/collection/ArrayMap$KeyIterator;->this$0:Ljava/lang/Object;

    .line 10
    iget p1, p1, Landroidx/collection/SimpleArrayMap;->size:I

    .line 11
    invoke-direct {p0, p1}, Landroidx/collection/ArrayMap$KeyIterator;-><init>(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Landroidx/collection/ArraySet;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Landroidx/collection/ArrayMap$KeyIterator;->$r8$classId:I

    .line 3
    iput-object p1, p0, Landroidx/collection/ArrayMap$KeyIterator;->this$0:Ljava/lang/Object;

    .line 4
    iget p1, p1, Landroidx/collection/ArraySet;->_size:I

    .line 5
    invoke-direct {p0, p1}, Landroidx/collection/ArrayMap$KeyIterator;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget v0, p0, Landroidx/collection/ArrayMap$KeyIterator;->index:I

    iget p0, p0, Landroidx/collection/ArrayMap$KeyIterator;->size:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Landroidx/collection/ArrayMap$KeyIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/collection/ArrayMap$KeyIterator;->index:I

    iget v1, p0, Landroidx/collection/ArrayMap$KeyIterator;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Landroidx/collection/ArrayMap$KeyIterator;->this$0:Ljava/lang/Object;

    check-cast v1, Landroidx/collection/ArraySet;

    iget-object v1, v1, Landroidx/collection/ArraySet;->array:[Ljava/lang/Object;

    aget-object v0, v1, v0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Landroidx/collection/ArrayMap$KeyIterator;->this$0:Ljava/lang/Object;

    check-cast v1, Landroidx/collection/ArrayMap;

    invoke-virtual {v1, v0}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Landroidx/collection/ArrayMap$KeyIterator;->this$0:Ljava/lang/Object;

    check-cast v1, Landroidx/collection/ArrayMap;

    invoke-virtual {v1, v0}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iget v1, p0, Landroidx/collection/ArrayMap$KeyIterator;->index:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Landroidx/collection/ArrayMap$KeyIterator;->index:I

    iput-boolean v2, p0, Landroidx/collection/ArrayMap$KeyIterator;->canRemove:Z

    return-object v0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 2

    iget-boolean v0, p0, Landroidx/collection/ArrayMap$KeyIterator;->canRemove:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/collection/ArrayMap$KeyIterator;->index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/collection/ArrayMap$KeyIterator;->index:I

    iget v1, p0, Landroidx/collection/ArrayMap$KeyIterator;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Landroidx/collection/ArrayMap$KeyIterator;->this$0:Ljava/lang/Object;

    check-cast v1, Landroidx/collection/ArraySet;

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->removeAt(I)Ljava/lang/Object;

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Landroidx/collection/ArrayMap$KeyIterator;->this$0:Ljava/lang/Object;

    check-cast v1, Landroidx/collection/ArrayMap;

    invoke-virtual {v1, v0}, Landroidx/collection/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Landroidx/collection/ArrayMap$KeyIterator;->this$0:Ljava/lang/Object;

    check-cast v1, Landroidx/collection/ArrayMap;

    invoke-virtual {v1, v0}, Landroidx/collection/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    :goto_0
    iget v0, p0, Landroidx/collection/ArrayMap$KeyIterator;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/collection/ArrayMap$KeyIterator;->size:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/collection/ArrayMap$KeyIterator;->canRemove:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Call next() before removing an element."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
