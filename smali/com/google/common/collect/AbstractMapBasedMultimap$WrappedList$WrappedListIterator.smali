.class public final Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;
.super Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field public final synthetic this$1:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;->this$1:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;

    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;I)V
    .locals 1

    .line 2
    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;->this$1:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;

    .line 3
    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    .line 4
    check-cast v0, Ljava/util/List;

    .line 5
    invoke-interface {v0, p2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;Ljava/util/ListIterator;)V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;->this$1:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;->getDelegateListIterator()Ljava/util/ListIterator;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    iget-object p0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzf:Ljava/io/Serializable;

    check-cast p0, Lcom/google/common/collect/Multimaps$CustomListMultimap;

    iget p1, p0, Lcom/google/common/collect/Multimaps$CustomListMultimap;->totalSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/Multimaps$CustomListMultimap;->totalSize:I

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->addToMap()V

    :cond_0
    return-void
.end method

.method public final getDelegateListIterator()Ljava/util/ListIterator;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->validateIterator()V

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->val$entryIterator:Ljava/util/Iterator;

    check-cast p0, Ljava/util/ListIterator;

    return-object p0
.end method

.method public final hasPrevious()Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;->getDelegateListIterator()Ljava/util/ListIterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result p0

    return p0
.end method

.method public final nextIndex()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;->getDelegateListIterator()Ljava/util/ListIterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/ListIterator;->nextIndex()I

    move-result p0

    return p0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;->getDelegateListIterator()Ljava/util/ListIterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final previousIndex()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;->getDelegateListIterator()Ljava/util/ListIterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/ListIterator;->previousIndex()I

    move-result p0

    return p0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;->getDelegateListIterator()Ljava/util/ListIterator;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void
.end method
