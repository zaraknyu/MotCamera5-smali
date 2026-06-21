.class public final Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableList$SubList;
.super Lkotlin/collections/AbstractList;
.source "SourceFile"


# instance fields
.field public final _size:I

.field public final fromIndex:I

.field public final source:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableList$SubList;->source:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    iput p2, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableList$SubList;->fromIndex:I

    invoke-virtual {p1}, Lkotlin/collections/AbstractCollection;->getSize()I

    move-result p1

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgq;->checkRangeIndexes$runtime_release(III)V

    sub-int/2addr p3, p2

    iput p3, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableList$SubList;->_size:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableList$SubList;->_size:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgq;->checkElementIndex$runtime_release(II)V

    iget v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableList$SubList;->fromIndex:I

    add-int/2addr v0, p1

    iget-object p0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableList$SubList;->source:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getSize()I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableList$SubList;->_size:I

    return p0
.end method

.method public final subList(II)Ljava/util/List;
    .locals 2

    iget v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableList$SubList;->_size:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgq;->checkRangeIndexes$runtime_release(III)V

    new-instance v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableList$SubList;

    iget v1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableList$SubList;->fromIndex:I

    add-int/2addr p1, v1

    add-int/2addr v1, p2

    iget-object p0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableList$SubList;->source:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    invoke-direct {v0, p0, p1, v1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableList$SubList;-><init>(Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;II)V

    return-object v0
.end method
