.class public final synthetic Lcom/motorola/camera/ui/compose/composable/MultipleClickableTextKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic f$1:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic f$2:Landroidx/compose/ui/text/AnnotatedString$Builder;

.field public final synthetic f$3:Landroidx/compose/ui/text/SpanStyle;

.field public final synthetic f$4:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:Landroidx/compose/ui/text/SpanStyle;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$IntRef;Landroidx/compose/ui/text/AnnotatedString$Builder;Landroidx/compose/ui/text/SpanStyle;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Landroidx/compose/ui/text/SpanStyle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/compose/composable/MultipleClickableTextKt$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/motorola/camera/ui/compose/composable/MultipleClickableTextKt$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p3, p0, Lcom/motorola/camera/ui/compose/composable/MultipleClickableTextKt$$ExternalSyntheticLambda1;->f$2:Landroidx/compose/ui/text/AnnotatedString$Builder;

    iput-object p4, p0, Lcom/motorola/camera/ui/compose/composable/MultipleClickableTextKt$$ExternalSyntheticLambda1;->f$3:Landroidx/compose/ui/text/SpanStyle;

    iput-object p5, p0, Lcom/motorola/camera/ui/compose/composable/MultipleClickableTextKt$$ExternalSyntheticLambda1;->f$4:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p6, p0, Lcom/motorola/camera/ui/compose/composable/MultipleClickableTextKt$$ExternalSyntheticLambda1;->f$5:Ljava/lang/String;

    iput-object p7, p0, Lcom/motorola/camera/ui/compose/composable/MultipleClickableTextKt$$ExternalSyntheticLambda1;->f$6:Landroidx/compose/ui/text/SpanStyle;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/motorola/camera/ui/compose/composable/MultipleClickableTextKt$$ExternalSyntheticLambda1;->f$2:Landroidx/compose/ui/text/AnnotatedString$Builder;

    iget-object v1, v0, Landroidx/compose/ui/text/AnnotatedString$Builder;->text:Ljava/lang/StringBuilder;

    check-cast p1, Ljava/lang/CharSequence;

    const-string/jumbo v2, "windowChars"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lkotlin/ranges/IntRange;

    iget-object v3, p0, Lcom/motorola/camera/ui/compose/composable/MultipleClickableTextKt$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Lkotlin/ranges/IntRange;

    iget v4, v4, Lkotlin/ranges/IntProgression;->last:I

    add-int/lit8 v5, v4, 0x1

    const/4 v6, 0x1

    invoke-direct {v2, v4, v5, v6}, Lkotlin/ranges/IntProgression;-><init>(III)V

    iput-object v2, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object v2, p0, Lcom/motorola/camera/ui/compose/composable/MultipleClickableTextKt$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/internal/Ref$IntRef;

    iget v4, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-lez v4, :cond_0

    add-int/lit8 v4, v4, -0x1

    iput v4, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto/16 :goto_1

    :cond_0
    invoke-static {p1}, Lkotlin/text/StringsKt;->first(Ljava/lang/CharSequence;)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    iget-object v5, p0, Lcom/motorola/camera/ui/compose/composable/MultipleClickableTextKt$$ExternalSyntheticLambda1;->f$3:Landroidx/compose/ui/text/SpanStyle;

    if-eqz v4, :cond_1

    invoke-virtual {v0, v5}, Landroidx/compose/ui/text/AnnotatedString$Builder;->pushStyle(Landroidx/compose/ui/text/SpanStyle;)I

    move-result p0

    :try_start_0
    invoke-static {p1}, Lkotlin/text/StringsKt;->first(Ljava/lang/CharSequence;)C

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, p0}, Landroidx/compose/ui/text/AnnotatedString$Builder;->pop(I)V

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    invoke-virtual {v0, p0}, Landroidx/compose/ui/text/AnnotatedString$Builder;->pop(I)V

    throw p1

    :cond_1
    iget-object v4, p0, Lcom/motorola/camera/ui/compose/composable/MultipleClickableTextKt$$ExternalSyntheticLambda1;->f$4:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/ui/text/AnnotatedString;

    iget-object v3, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lkotlin/ranges/IntRange;

    iget v7, v3, Lkotlin/ranges/IntProgression;->first:I

    iget v3, v3, Lkotlin/ranges/IntProgression;->last:I

    invoke-virtual {v4, v7, v3}, Landroidx/compose/ui/text/AnnotatedString;->getStringAnnotations(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    iget-object v7, p0, Lcom/motorola/camera/ui/compose/composable/MultipleClickableTextKt$$ExternalSyntheticLambda1;->f$6:Landroidx/compose/ui/text/SpanStyle;

    if-nez v4, :cond_3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/text/AnnotatedString$Range;

    invoke-virtual {v0, v7}, Landroidx/compose/ui/text/AnnotatedString$Builder;->pushStyle(Landroidx/compose/ui/text/SpanStyle;)I

    move-result v3

    :try_start_1
    iget-object v4, p1, Landroidx/compose/ui/text/AnnotatedString$Range;->tag:Ljava/lang/String;

    iget-object p1, p1, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroidx/compose/ui/text/AnnotatedString$Builder;->pushStringAnnotation(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v4, p1

    iput v4, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v0, v3}, Landroidx/compose/ui/text/AnnotatedString$Builder;->pop(I)V

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {v0, v3}, Landroidx/compose/ui/text/AnnotatedString$Builder;->pop(I)V

    throw p0

    :cond_2
    iget p0, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    sub-int/2addr p0, v6

    iput p0, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Lcom/motorola/camera/ui/compose/composable/MultipleClickableTextKt$$ExternalSyntheticLambda1;->f$5:Ljava/lang/String;

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {v0, v7}, Landroidx/compose/ui/text/AnnotatedString$Builder;->pushStyle(Landroidx/compose/ui/text/SpanStyle;)I

    move-result p0

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroidx/compose/ui/text/AnnotatedString$Builder;->pushStringAnnotation(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    sub-int/2addr p1, v6

    add-int/2addr p1, v1

    iput p1, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v0, p0}, Landroidx/compose/ui/text/AnnotatedString$Builder;->pop(I)V

    goto :goto_1

    :catchall_2
    move-exception p1

    invoke-virtual {v0, p0}, Landroidx/compose/ui/text/AnnotatedString$Builder;->pop(I)V

    throw p1

    :cond_4
    invoke-virtual {v0, v5}, Landroidx/compose/ui/text/AnnotatedString$Builder;->pushStyle(Landroidx/compose/ui/text/SpanStyle;)I

    move-result p0

    :try_start_3
    invoke-static {p1}, Lkotlin/text/StringsKt;->first(Ljava/lang/CharSequence;)C

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    invoke-virtual {v0, p0}, Landroidx/compose/ui/text/AnnotatedString$Builder;->pop(I)V

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catchall_3
    move-exception p1

    invoke-virtual {v0, p0}, Landroidx/compose/ui/text/AnnotatedString$Builder;->pop(I)V

    throw p1
.end method
