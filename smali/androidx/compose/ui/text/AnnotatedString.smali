.class public final Landroidx/compose/ui/text/AnnotatedString;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/CharSequence;


# instance fields
.field public final annotations:Ljava/util/List;

.field public final paragraphStylesOrNull:Ljava/util/ArrayList;

.field public final spanStylesOrNull:Ljava/util/ArrayList;

.field public final text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/ui/text/SaversKt;->AnnotationRangeListSaver:Landroidx/sqlite/db/SimpleSQLiteQuery;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 36
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 37
    invoke-direct {p0, p1, v0}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    .line 38
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p2, p1}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/compose/ui/text/AnnotatedString;->annotations:Ljava/util/List;

    iput-object p2, p0, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    const/4 p2, 0x0

    if-eqz p1, :cond_4

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    move-object v2, p2

    move-object v3, v2

    :goto_0
    if-ge v1, v0, :cond_5

    .line 4
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 5
    check-cast v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 6
    iget-object v5, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 7
    instance-of v6, v5, Landroidx/compose/ui/text/SpanStyle;

    if-eqz v6, :cond_1

    if-nez v2, :cond_0

    .line 8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 9
    :cond_0
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 10
    :cond_1
    instance-of v5, v5, Landroidx/compose/ui/text/ParagraphStyle;

    if-eqz v5, :cond_3

    if-nez v3, :cond_2

    .line 11
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 12
    :cond_2
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    move-object v2, p2

    move-object v3, v2

    .line 13
    :cond_5
    iput-object v2, p0, Landroidx/compose/ui/text/AnnotatedString;->spanStylesOrNull:Ljava/util/ArrayList;

    .line 14
    iput-object v3, p0, Landroidx/compose/ui/text/AnnotatedString;->paragraphStylesOrNull:Ljava/util/ArrayList;

    const/4 p0, 0x1

    if-eqz v3, :cond_6

    .line 15
    new-instance p1, Landroidx/viewpager/widget/ViewPager$1;

    .line 16
    invoke-direct {p1, p0}, Landroidx/viewpager/widget/ViewPager$1;-><init>(I)V

    .line 17
    invoke-static {v3, p1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    goto :goto_2

    :cond_6
    move-object p1, p2

    :goto_2
    if-eqz p1, :cond_c

    .line 18
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_6

    .line 19
    :cond_7
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 20
    iget v0, v0, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 21
    sget-object v1, Landroidx/collection/IntListKt;->EmptyIntList:Landroidx/collection/MutableIntList;

    .line 22
    new-instance v1, Landroidx/collection/MutableIntList;

    invoke-direct {v1, p0}, Landroidx/collection/MutableIntList;-><init>(I)V

    .line 23
    invoke-virtual {v1, v0}, Landroidx/collection/MutableIntList;->add(I)V

    .line 24
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_3
    if-ge p0, v0, :cond_c

    .line 25
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 26
    :goto_4
    iget v3, v1, Landroidx/collection/MutableIntList;->_size:I

    if-eqz v3, :cond_b

    if-eqz v3, :cond_a

    .line 27
    iget-object v4, v1, Landroidx/collection/MutableIntList;->content:[I

    add-int/lit8 v5, v3, -0x1

    .line 28
    aget v4, v4, v5

    .line 29
    iget v5, v2, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    iget v6, v2, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    if-lt v5, v4, :cond_8

    add-int/lit8 v3, v3, -0x1

    .line 30
    invoke-virtual {v1, v3}, Landroidx/collection/MutableIntList;->removeAt(I)I

    goto :goto_4

    :cond_8
    if-gt v6, v4, :cond_9

    goto :goto_5

    .line 31
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Paragraph overlap not allowed, end "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " should be less than or equal to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 32
    invoke-static {v3}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    goto :goto_5

    .line 33
    :cond_a
    const-string p0, "IntList is empty."

    invoke-static {p0}, Landroidx/collection/internal/RuntimeHelpersKt;->throwNoSuchElementException(Ljava/lang/String;)V

    throw p2

    .line 34
    :cond_b
    :goto_5
    iget v2, v2, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 35
    invoke-virtual {v1, v2}, Landroidx/collection/MutableIntList;->add(I)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_c
    :goto_6
    return-void
.end method


# virtual methods
.method public final charAt(I)C
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/text/AnnotatedString;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/ui/text/AnnotatedString;

    iget-object v1, p1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    iget-object v3, p0, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Landroidx/compose/ui/text/AnnotatedString;->annotations:Ljava/util/List;

    iget-object p1, p1, Landroidx/compose/ui/text/AnnotatedString;->annotations:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getLinkAnnotations(I)Ljava/util/List;
    .locals 7

    iget-object p0, p0, Landroidx/compose/ui/text/AnnotatedString;->annotations:Ljava/util/List;

    if-eqz p0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget-object v6, v5, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    instance-of v6, v6, Landroidx/compose/ui/text/LinkAnnotation;

    if-eqz v6, :cond_0

    iget v6, v5, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    iget v5, v5, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    invoke-static {v2, p1, v6, v5}, Landroidx/compose/ui/text/AnnotatedStringKt;->intersect(IIII)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    return-object p0
.end method

.method public final getStringAnnotations(II)Ljava/util/List;
    .locals 9

    iget-object p0, p0, Landroidx/compose/ui/text/AnnotatedString;->annotations:Ljava/util/List;

    if-eqz p0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget-object v4, v3, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    iget v5, v3, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    iget v6, v3, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    instance-of v4, v4, Landroidx/compose/ui/text/StringAnnotation;

    if-eqz v4, :cond_0

    invoke-static {p1, p2, v6, v5}, Landroidx/compose/ui/text/AnnotatedStringKt;->intersect(IIII)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget-object v7, v3, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    const-string v8, "null cannot be cast to non-null type androidx.compose.ui.text.StringAnnotation"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroidx/compose/ui/text/StringAnnotation;

    iget-object v7, v7, Landroidx/compose/ui/text/StringAnnotation;->value:Ljava/lang/String;

    iget-object v3, v3, Landroidx/compose/ui/text/AnnotatedString$Range;->tag:Ljava/lang/String;

    invoke-direct {v4, v6, v5, v7, v3}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    return-object p0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroidx/compose/ui/text/AnnotatedString;->annotations:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final length()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method public final subSequence(II)Landroidx/compose/ui/text/AnnotatedString;
    .locals 9

    const/4 v0, 0x0

    if-gt p1, p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const/16 v2, 0x29

    .line 2
    const-string/jumbo v3, "start ("

    if-nez v1, :cond_1

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") should be less or equal to end ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 5
    :cond_1
    iget-object v1, p0, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    if-nez p1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne p2, v4, :cond_2

    return-object p0

    .line 6
    :cond_2
    invoke-virtual {v1, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "substring(...)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget v4, Landroidx/compose/ui/text/AnnotatedStringKt;->$r8$clinit:I

    if-gt p1, p2, :cond_3

    goto :goto_1

    .line 8
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") should be less than or equal to end ("

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-static {v2}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 10
    :goto_1
    iget-object p0, p0, Landroidx/compose/ui/text/AnnotatedString;->annotations:Ljava/util/List;

    if-nez p0, :cond_4

    goto :goto_3

    .line 11
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v3

    :goto_2
    if-ge v0, v3, :cond_6

    .line 13
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 14
    check-cast v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 15
    iget v5, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    iget v6, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 16
    invoke-static {p1, p2, v5, v6}, Landroidx/compose/ui/text/AnnotatedStringKt;->intersect(IIII)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 17
    new-instance v5, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 18
    iget-object v7, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 19
    iget v8, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    .line 20
    invoke-static {p1, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    sub-int/2addr v8, p1

    .line 21
    invoke-static {p2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    sub-int/2addr v6, p1

    .line 22
    iget-object v4, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->tag:Ljava/lang/String;

    .line 23
    invoke-direct {v5, v8, v6, v7, v4}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 25
    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_7

    :goto_3
    const/4 v2, 0x0

    .line 26
    :cond_7
    new-instance p0, Landroidx/compose/ui/text/AnnotatedString;

    invoke-direct {p0, v2, v1}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object p0
.end method

.method public final bridge synthetic subSequence(II)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/text/AnnotatedString;->subSequence(II)Landroidx/compose/ui/text/AnnotatedString;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    return-object p0
.end method
