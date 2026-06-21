.class public Lkotlin/UIntArray$Iterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# instance fields
.field public final synthetic $r8$classId:I

.field public final array:Ljava/lang/Object;

.field public index:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lkotlin/UIntArray$Iterator;->$r8$classId:I

    iput-object p2, p0, Lkotlin/UIntArray$Iterator;->array:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Lkotlin/UIntArray$Iterator;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lkotlin/UIntArray$Iterator;->array:Ljava/lang/Object;

    .line 5
    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementsCount()I

    move-result p1

    iput p1, p0, Lkotlin/UIntArray$Iterator;->index:I

    return-void
.end method

.method public constructor <init>(Lkotlinx/serialization/internal/EnumDescriptor;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Lkotlin/UIntArray$Iterator;->$r8$classId:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lkotlin/UIntArray$Iterator;->array:Ljava/lang/Object;

    .line 8
    iget p1, p1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->elementsCount:I

    .line 9
    iput p1, p0, Lkotlin/UIntArray$Iterator;->index:I

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Lkotlin/UIntArray$Iterator;->$r8$classId:I

    const-string v0, "array"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/UIntArray$Iterator;->array:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget v0, p0, Lkotlin/UIntArray$Iterator;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget p0, p0, Lkotlin/UIntArray$Iterator;->index:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_0
    iget p0, p0, Lkotlin/UIntArray$Iterator;->index:I

    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0

    :pswitch_1
    iget v0, p0, Lkotlin/UIntArray$Iterator;->index:I

    iget-object p0, p0, Lkotlin/UIntArray$Iterator;->array:Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    array-length p0, p0

    if-ge v0, p0, :cond_2

    const/4 p0, 0x1

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    return p0

    :pswitch_2
    iget v0, p0, Lkotlin/UIntArray$Iterator;->index:I

    iget-object p0, p0, Lkotlin/UIntArray$Iterator;->array:Ljava/lang/Object;

    check-cast p0, Lkotlin/collections/AbstractList;

    invoke-virtual {p0}, Lkotlin/collections/AbstractCollection;->getSize()I

    move-result p0

    if-ge v0, p0, :cond_3

    const/4 p0, 0x1

    goto :goto_3

    :cond_3
    const/4 p0, 0x0

    :goto_3
    return p0

    :pswitch_3
    iget v0, p0, Lkotlin/UIntArray$Iterator;->index:I

    iget-object p0, p0, Lkotlin/UIntArray$Iterator;->array:Ljava/lang/Object;

    check-cast p0, [S

    array-length p0, p0

    if-ge v0, p0, :cond_4

    const/4 p0, 0x1

    goto :goto_4

    :cond_4
    const/4 p0, 0x0

    :goto_4
    return p0

    :pswitch_4
    iget v0, p0, Lkotlin/UIntArray$Iterator;->index:I

    iget-object p0, p0, Lkotlin/UIntArray$Iterator;->array:Ljava/lang/Object;

    check-cast p0, [J

    array-length p0, p0

    if-ge v0, p0, :cond_5

    const/4 p0, 0x1

    goto :goto_5

    :cond_5
    const/4 p0, 0x0

    :goto_5
    return p0

    :pswitch_5
    iget v0, p0, Lkotlin/UIntArray$Iterator;->index:I

    iget-object p0, p0, Lkotlin/UIntArray$Iterator;->array:Ljava/lang/Object;

    check-cast p0, [B

    array-length p0, p0

    if-ge v0, p0, :cond_6

    const/4 p0, 0x1

    goto :goto_6

    :cond_6
    const/4 p0, 0x0

    :goto_6
    return p0

    :pswitch_6
    iget v0, p0, Lkotlin/UIntArray$Iterator;->index:I

    iget-object p0, p0, Lkotlin/UIntArray$Iterator;->array:Ljava/lang/Object;

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    if-ge v0, p0, :cond_7

    const/4 p0, 0x1

    goto :goto_7

    :cond_7
    const/4 p0, 0x0

    :goto_7
    return p0

    :pswitch_7
    iget v0, p0, Lkotlin/UIntArray$Iterator;->index:I

    iget-object p0, p0, Lkotlin/UIntArray$Iterator;->array:Ljava/lang/Object;

    check-cast p0, [I

    array-length p0, p0

    if-ge v0, p0, :cond_8

    const/4 p0, 0x1

    goto :goto_8

    :cond_8
    const/4 p0, 0x0

    :goto_8
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lkotlin/UIntArray$Iterator;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lkotlin/UIntArray$Iterator;->array:Ljava/lang/Object;

    check-cast v0, Lkotlinx/serialization/internal/EnumDescriptor;

    iget v1, v0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->elementsCount:I

    iget v2, p0, Lkotlin/UIntArray$Iterator;->index:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lkotlin/UIntArray$Iterator;->index:I

    sub-int/2addr v1, v2

    iget-object p0, v0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->names:[Ljava/lang/String;

    aget-object p0, p0, v1

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lkotlin/UIntArray$Iterator;->array:Ljava/lang/Object;

    check-cast v0, Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {v0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementsCount()I

    move-result v1

    iget v2, p0, Lkotlin/UIntArray$Iterator;->index:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lkotlin/UIntArray$Iterator;->index:I

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    return-object p0

    :pswitch_1
    :try_start_0
    iget-object v0, p0, Lkotlin/UIntArray$Iterator;->array:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iget v1, p0, Lkotlin/UIntArray$Iterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlin/UIntArray$Iterator;->index:I

    aget-object p0, v0, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    iget v1, p0, Lkotlin/UIntArray$Iterator;->index:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lkotlin/UIntArray$Iterator;->index:I

    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    invoke-virtual {p0}, Lkotlin/UIntArray$Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkotlin/UIntArray$Iterator;->array:Ljava/lang/Object;

    check-cast v0, Lkotlin/collections/AbstractList;

    iget v1, p0, Lkotlin/UIntArray$Iterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlin/UIntArray$Iterator;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :pswitch_3
    iget v0, p0, Lkotlin/UIntArray$Iterator;->index:I

    iget-object v1, p0, Lkotlin/UIntArray$Iterator;->array:Ljava/lang/Object;

    check-cast v1, [S

    array-length v2, v1

    if-ge v0, v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lkotlin/UIntArray$Iterator;->index:I

    aget-short p0, v1, v0

    new-instance v0, Lkotlin/UShort;

    invoke-direct {v0, p0}, Lkotlin/UShort;-><init>(S)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    iget p0, p0, Lkotlin/UIntArray$Iterator;->index:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4
    iget v0, p0, Lkotlin/UIntArray$Iterator;->index:I

    iget-object v1, p0, Lkotlin/UIntArray$Iterator;->array:Ljava/lang/Object;

    check-cast v1, [J

    array-length v2, v1

    if-ge v0, v2, :cond_2

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lkotlin/UIntArray$Iterator;->index:I

    aget-wide v0, v1, v0

    new-instance p0, Lkotlin/ULong;

    invoke-direct {p0, v0, v1}, Lkotlin/ULong;-><init>(J)V

    return-object p0

    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    iget p0, p0, Lkotlin/UIntArray$Iterator;->index:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_5
    iget v0, p0, Lkotlin/UIntArray$Iterator;->index:I

    iget-object v1, p0, Lkotlin/UIntArray$Iterator;->array:Ljava/lang/Object;

    check-cast v1, [B

    array-length v2, v1

    if-ge v0, v2, :cond_3

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lkotlin/UIntArray$Iterator;->index:I

    aget-byte p0, v1, v0

    new-instance v0, Lkotlin/UByte;

    invoke-direct {v0, p0}, Lkotlin/UByte;-><init>(B)V

    return-object v0

    :cond_3
    new-instance v0, Ljava/util/NoSuchElementException;

    iget p0, p0, Lkotlin/UIntArray$Iterator;->index:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_6
    iget-object v0, p0, Lkotlin/UIntArray$Iterator;->array:Ljava/lang/Object;

    check-cast v0, Landroid/view/ViewGroup;

    iget v1, p0, Lkotlin/UIntArray$Iterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlin/UIntArray$Iterator;->index:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_4

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :pswitch_7
    iget v0, p0, Lkotlin/UIntArray$Iterator;->index:I

    iget-object v1, p0, Lkotlin/UIntArray$Iterator;->array:Ljava/lang/Object;

    check-cast v1, [I

    array-length v2, v1

    if-ge v0, v2, :cond_5

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lkotlin/UIntArray$Iterator;->index:I

    aget p0, v1, v0

    new-instance v0, Lkotlin/UInt;

    invoke-direct {v0, p0}, Lkotlin/UInt;-><init>(I)V

    return-object v0

    :cond_5
    new-instance v0, Ljava/util/NoSuchElementException;

    iget p0, p0, Lkotlin/UIntArray$Iterator;->index:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 2

    iget v0, p0, Lkotlin/UIntArray$Iterator;->$r8$classId:I

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
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_5
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_6
    iget-object v0, p0, Lkotlin/UIntArray$Iterator;->array:Ljava/lang/Object;

    check-cast v0, Landroid/view/ViewGroup;

    iget v1, p0, Lkotlin/UIntArray$Iterator;->index:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lkotlin/UIntArray$Iterator;->index:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    return-void

    :pswitch_7
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
