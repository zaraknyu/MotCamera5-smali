.class public Lcom/google/common/collect/Lists$ReverseList;
.super Ljava/util/AbstractList;
.source "SourceFile"


# instance fields
.field public final forwardList:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/common/collect/Lists$ReverseList;->forwardList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList;->forwardList:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Lists$ReverseList;->reversePosition(I)I

    move-result p0

    invoke-interface {v0, p0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public final clear()V
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/Lists$ReverseList;->forwardList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/google/common/collect/Lists$ReverseList;->forwardList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)V

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object p0

    return-object p0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Lists$ReverseList;->reversePosition(I)I

    move-result p1

    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList;->forwardList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    new-instance v0, Lcom/google/common/collect/Lists$ReverseList$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Lists$ReverseList$1;-><init>(Lcom/google/common/collect/Lists$ReverseList;Ljava/util/ListIterator;)V

    return-object v0
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/google/common/collect/Lists$ReverseList;->forwardList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)V

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final removeRange(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Lists$ReverseList;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final reversePosition(I)I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/Lists$ReverseList;->forwardList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p1, p0}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)V

    sub-int/2addr p0, p1

    return p0
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/google/common/collect/Lists$ReverseList;->forwardList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)V

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    invoke-interface {p0, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/Lists$ReverseList;->forwardList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final subList(II)Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList;->forwardList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {p1, p2, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    invoke-virtual {p0, p2}, Lcom/google/common/collect/Lists$ReverseList;->reversePosition(I)I

    move-result p2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Lists$ReverseList;->reversePosition(I)I

    move-result p0

    invoke-interface {v0, p2, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/Maps;->reverse(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
