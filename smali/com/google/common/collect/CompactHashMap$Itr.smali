.class public abstract Lcom/google/common/collect/CompactHashMap$Itr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final synthetic $r8$classId:I

.field public currentIndex:I

.field public expectedMetadata:I

.field public indexToRemove:I

.field public final synthetic this$0:Ljava/util/AbstractMap;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzci;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/common/collect/CompactHashMap$Itr;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/CompactHashMap$Itr;->this$0:Ljava/util/AbstractMap;

    .line 2
    iget v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzci;->zzf:I

    .line 3
    iput v0, p0, Lcom/google/common/collect/CompactHashMap$Itr;->expectedMetadata:I

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzci;->isEmpty()Z

    move-result p1

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    :goto_0
    iput p1, p0, Lcom/google/common/collect/CompactHashMap$Itr;->currentIndex:I

    iput v0, p0, Lcom/google/common/collect/CompactHashMap$Itr;->indexToRemove:I

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/CompactHashMap;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/CompactHashMap$Itr;->$r8$classId:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/CompactHashMap$Itr;->this$0:Ljava/util/AbstractMap;

    .line 7
    iget v0, p1, Lcom/google/common/collect/CompactHashMap;->metadata:I

    .line 8
    iput v0, p0, Lcom/google/common/collect/CompactHashMap$Itr;->expectedMetadata:I

    .line 9
    invoke-virtual {p1}, Lcom/google/common/collect/CompactHashMap;->isEmpty()Z

    move-result p1

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    iput p1, p0, Lcom/google/common/collect/CompactHashMap$Itr;->currentIndex:I

    .line 11
    iput v0, p0, Lcom/google/common/collect/CompactHashMap$Itr;->indexToRemove:I

    return-void
.end method


# virtual methods
.method public abstract getOutput(I)Ljava/lang/Object;
.end method

.method public final hasNext()Z
    .locals 1

    iget v0, p0, Lcom/google/common/collect/CompactHashMap$Itr;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget p0, p0, Lcom/google/common/collect/CompactHashMap$Itr;->currentIndex:I

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_0
    iget p0, p0, Lcom/google/common/collect/CompactHashMap$Itr;->currentIndex:I

    if-ltz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/google/common/collect/CompactHashMap$Itr;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap$Itr;->this$0:Ljava/util/AbstractMap;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzci;

    iget v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzci;->zzf:I

    iget v2, p0, Lcom/google/common/collect/CompactHashMap$Itr;->expectedMetadata:I

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap$Itr;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/common/collect/CompactHashMap$Itr;->currentIndex:I

    iput v1, p0, Lcom/google/common/collect/CompactHashMap$Itr;->indexToRemove:I

    invoke-virtual {p0, v1}, Lcom/google/common/collect/CompactHashMap$Itr;->zza(I)Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lcom/google/common/collect/CompactHashMap$Itr;->currentIndex:I

    add-int/lit8 v2, v2, 0x1

    iget v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzci;->zzg:I

    if-ge v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    iput v2, p0, Lcom/google/common/collect/CompactHashMap$Itr;->currentIndex:I

    return-object v1

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_2
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0

    :pswitch_0
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap$Itr;->this$0:Ljava/util/AbstractMap;

    check-cast v0, Lcom/google/common/collect/CompactHashMap;

    iget v1, v0, Lcom/google/common/collect/CompactHashMap;->metadata:I

    iget v2, p0, Lcom/google/common/collect/CompactHashMap$Itr;->expectedMetadata:I

    if-ne v1, v2, :cond_5

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap$Itr;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/google/common/collect/CompactHashMap$Itr;->currentIndex:I

    iput v1, p0, Lcom/google/common/collect/CompactHashMap$Itr;->indexToRemove:I

    invoke-virtual {p0, v1}, Lcom/google/common/collect/CompactHashMap$Itr;->getOutput(I)Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lcom/google/common/collect/CompactHashMap$Itr;->currentIndex:I

    add-int/lit8 v2, v2, 0x1

    iget v0, v0, Lcom/google/common/collect/CompactHashMap;->size:I

    if-ge v2, v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, -0x1

    :goto_1
    iput v2, p0, Lcom/google/common/collect/CompactHashMap$Itr;->currentIndex:I

    return-object v1

    :cond_4
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_5
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 5

    iget v0, p0, Lcom/google/common/collect/CompactHashMap$Itr;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap$Itr;->this$0:Ljava/util/AbstractMap;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzci;

    iget v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzci;->zzf:I

    iget v2, p0, Lcom/google/common/collect/CompactHashMap$Itr;->expectedMetadata:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/google/common/collect/CompactHashMap$Itr;->indexToRemove:I

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "no calls to next() since the last call to remove()"

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxa;->zzf(Ljava/lang/String;Z)V

    iget v1, p0, Lcom/google/common/collect/CompactHashMap$Itr;->expectedMetadata:I

    add-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/common/collect/CompactHashMap$Itr;->expectedMetadata:I

    iget v1, p0, Lcom/google/common/collect/CompactHashMap$Itr;->indexToRemove:I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzci;->zzB()[Ljava/lang/Object;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzci;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/common/collect/CompactHashMap$Itr;->currentIndex:I

    const/4 v1, -0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/collect/CompactHashMap$Itr;->currentIndex:I

    iput v1, p0, Lcom/google/common/collect/CompactHashMap$Itr;->indexToRemove:I

    return-void

    :cond_1
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0

    :pswitch_0
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap$Itr;->this$0:Ljava/util/AbstractMap;

    check-cast v0, Lcom/google/common/collect/CompactHashMap;

    iget v1, v0, Lcom/google/common/collect/CompactHashMap;->metadata:I

    iget v2, p0, Lcom/google/common/collect/CompactHashMap$Itr;->expectedMetadata:I

    if-ne v1, v2, :cond_4

    iget v1, p0, Lcom/google/common/collect/CompactHashMap$Itr;->indexToRemove:I

    const/4 v3, 0x1

    if-ltz v1, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_3

    add-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/google/common/collect/CompactHashMap$Itr;->expectedMetadata:I

    invoke-virtual {v0}, Lcom/google/common/collect/CompactHashMap;->requireKeys()[Ljava/lang/Object;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/CompactHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/common/collect/CompactHashMap$Itr;->currentIndex:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/google/common/collect/CompactHashMap$Itr;->currentIndex:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/collect/CompactHashMap$Itr;->indexToRemove:I

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "no calls to next() since the last call to remove()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public abstract zza(I)Ljava/lang/Object;
.end method
