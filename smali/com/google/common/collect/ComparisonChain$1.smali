.class public final Lcom/google/common/collect/ComparisonChain$1;
.super Lcom/google/common/collect/ComparisonChain;
.source "SourceFile"


# direct methods
.method public static classify(I)Lcom/google/common/collect/ComparisonChain;
    .locals 0

    if-gez p0, :cond_0

    sget-object p0, Lcom/google/common/collect/ComparisonChain;->LESS:Lcom/google/common/collect/ComparisonChain$InactiveComparisonChain;

    return-object p0

    :cond_0
    if-lez p0, :cond_1

    sget-object p0, Lcom/google/common/collect/ComparisonChain;->GREATER:Lcom/google/common/collect/ComparisonChain$InactiveComparisonChain;

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/common/collect/ComparisonChain;->ACTIVE:Lcom/google/common/collect/ComparisonChain$1;

    return-object p0
.end method


# virtual methods
.method public final compare(II)Lcom/google/common/collect/ComparisonChain;
    .locals 0

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    invoke-static {p0}, Lcom/google/common/collect/ComparisonChain$1;->classify(I)Lcom/google/common/collect/ComparisonChain;

    move-result-object p0

    return-object p0
.end method

.method public final compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;
    .locals 0

    .line 1
    invoke-interface {p3, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Lcom/google/common/collect/ComparisonChain$1;->classify(I)Lcom/google/common/collect/ComparisonChain;

    move-result-object p0

    return-object p0
.end method

.method public final compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p0

    invoke-static {p0}, Lcom/google/common/collect/ComparisonChain$1;->classify(I)Lcom/google/common/collect/ComparisonChain;

    move-result-object p0

    return-object p0
.end method

.method public final compareTrueFirst(ZZ)Lcom/google/common/collect/ComparisonChain;
    .locals 0

    invoke-static {p2, p1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p0

    invoke-static {p0}, Lcom/google/common/collect/ComparisonChain$1;->classify(I)Lcom/google/common/collect/ComparisonChain;

    move-result-object p0

    return-object p0
.end method

.method public final result()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
