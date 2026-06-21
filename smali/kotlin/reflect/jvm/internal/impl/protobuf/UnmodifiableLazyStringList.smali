.class public final Lkotlin/reflect/jvm/internal/impl/protobuf/UnmodifiableLazyStringList;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Lkotlin/reflect/jvm/internal/impl/protobuf/LazyStringList;


# instance fields
.field public final list:Lkotlin/reflect/jvm/internal/impl/protobuf/LazyStringArrayList;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/LazyStringArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/UnmodifiableLazyStringList;->list:Lkotlin/reflect/jvm/internal/impl/protobuf/LazyStringArrayList;

    return-void
.end method


# virtual methods
.method public final add(Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/UnmodifiableLazyStringList;->list:Lkotlin/reflect/jvm/internal/impl/protobuf/LazyStringArrayList;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/LazyStringArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final getByteString(I)Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/UnmodifiableLazyStringList;->list:Lkotlin/reflect/jvm/internal/impl/protobuf/LazyStringArrayList;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/LazyStringArrayList;->getByteString(I)Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public final getUnderlyingElements()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/UnmodifiableLazyStringList;->list:Lkotlin/reflect/jvm/internal/impl/protobuf/LazyStringArrayList;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LazyStringArrayList;->list:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getUnmodifiableView()Lkotlin/reflect/jvm/internal/impl/protobuf/UnmodifiableLazyStringList;
    .locals 0

    return-object p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/adobe/internal/xmp/impl/XMPNode$1;

    invoke-direct {v0}, Lcom/adobe/internal/xmp/impl/XMPNode$1;-><init>()V

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/UnmodifiableLazyStringList;->list:Lkotlin/reflect/jvm/internal/impl/protobuf/LazyStringArrayList;

    invoke-virtual {p0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    iput-object p0, v0, Lcom/adobe/internal/xmp/impl/XMPNode$1;->val$it:Ljava/util/Iterator;

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/UnmodifiableLazyStringList$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/UnmodifiableLazyStringList;->list:Lkotlin/reflect/jvm/internal/impl/protobuf/LazyStringArrayList;

    invoke-virtual {p0, p1}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p0

    iput-object p0, v0, Lkotlin/reflect/jvm/internal/impl/protobuf/UnmodifiableLazyStringList$1;->iter:Ljava/util/ListIterator;

    return-object v0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/UnmodifiableLazyStringList;->list:Lkotlin/reflect/jvm/internal/impl/protobuf/LazyStringArrayList;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/LazyStringArrayList;->size()I

    move-result p0

    return p0
.end method
