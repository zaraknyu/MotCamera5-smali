.class public final Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;
.super Lkotlin/collections/AbstractMutableSet;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public data:Ljava/lang/Object;

.field public size:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 4

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;->size:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;->data:Ljava/lang/Object;

    goto :goto_2

    :cond_0
    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;->data:Ljava/lang/Object;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;->data:Ljava/lang/Object;

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;->data:Ljava/lang/Object;

    goto :goto_2

    :cond_2
    const/4 v2, 0x5

    if-ge v0, v2, :cond_5

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;->data:Ljava/lang/Object;

    const-string v2, "null cannot be cast to non-null type kotlin.Array<T of org.jetbrains.kotlin.utils.SmartSet>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lkotlin/collections/ArraysKt;->contains(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;->size:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v2, "elements"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/util/LinkedHashSet;

    array-length v3, v0

    invoke-static {v3}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/LinkedHashSet;-><init>(I)V

    invoke-static {v0, v2}, Lkotlin/collections/ArraysKt;->toCollection([Ljava/lang/Object;Ljava/util/HashSet;)V

    invoke-virtual {v2, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    add-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v0, "copyOf(...)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, v2

    sub-int/2addr v0, v1

    aput-object p1, v2, v0

    :goto_0
    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;->data:Ljava/lang/Object;

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;->data:Ljava/lang/Object;

    const-string v2, "null cannot be cast to non-null type kotlin.collections.MutableSet<T of org.jetbrains.kotlin.utils.SmartSet>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableSet(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    :goto_1
    const/4 p0, 0x0

    return p0

    :cond_6
    :goto_2
    iget p1, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;->size:I

    add-int/2addr p1, v1

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;->size:I

    return v1
.end method

.method public final clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;->data:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;->size:I

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;->getSize()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;->getSize()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;->data:Ljava/lang/Object;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;->getSize()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;->data:Ljava/lang/Object;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T of org.jetbrains.kotlin.utils.SmartSet>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p1, p0}, Lkotlin/collections/ArraysKt;->contains(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;->data:Ljava/lang/Object;

    const-string v0, "null cannot be cast to non-null type kotlin.collections.Set<T of org.jetbrains.kotlin.utils.SmartSet>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getSize()I
    .locals 0

    iget p0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;->size:I

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;->size:I

    if-nez v0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet$SingletonIterator;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;->data:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet$SingletonIterator;-><init>(ILjava/lang/Object;)V

    return-object v0

    :cond_1
    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    new-instance v0, Landroidx/compose/ui/graphics/vector/VectorGroup$iterator$1;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;->data:Ljava/lang/Object;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T of org.jetbrains.kotlin.utils.SmartSet>"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, [Ljava/lang/Object;

    invoke-direct {v0, p0}, Landroidx/compose/ui/graphics/vector/VectorGroup$iterator$1;-><init>([Ljava/lang/Object;)V

    return-object v0

    :cond_2
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;->data:Ljava/lang/Object;

    const-string v0, "null cannot be cast to non-null type kotlin.collections.MutableSet<T of org.jetbrains.kotlin.utils.SmartSet>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableSet(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
