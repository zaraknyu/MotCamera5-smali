.class public final Landroidx/compose/ui/text/AnnotatedString$Range;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final end:I

.field public final item:Ljava/lang/Object;

.field public final start:I

.field public final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/Object;)V
    .locals 1

    .line 5
    const-string v0, ""

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    iput p1, p0, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    iput p2, p0, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    iput-object p4, p0, Landroidx/compose/ui/text/AnnotatedString$Range;->tag:Ljava/lang/String;

    if-gt p1, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    .line 3
    const-string p0, "Reversed range is not supported"

    .line 4
    invoke-static {p0}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static copy$default(Landroidx/compose/ui/text/AnnotatedString$Range;Landroidx/compose/ui/text/ParagraphStyle;II)Landroidx/compose/ui/text/AnnotatedString$Range;
    .locals 1

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    iget-object p1, p0, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    :cond_0
    iget v0, p0, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_1

    iget p2, p0, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    :cond_1
    iget-object p0, p0, Landroidx/compose/ui/text/AnnotatedString$Range;->tag:Ljava/lang/String;

    new-instance p3, Landroidx/compose/ui/text/AnnotatedString$Range;

    invoke-direct {p3, v0, p2, p1, p0}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;Ljava/lang/String;)V

    return-object p3
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/text/AnnotatedString$Range;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget-object v1, p0, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    iget-object v3, p1, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    iget v3, p1, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    iget v3, p1, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Landroidx/compose/ui/text/AnnotatedString$Range;->tag:Ljava/lang/String;

    iget-object p1, p1, Landroidx/compose/ui/text/AnnotatedString$Range;->tag:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object p0, p0, Landroidx/compose/ui/text/AnnotatedString$Range;->tag:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Range(item="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/compose/ui/text/AnnotatedString$Range;->tag:Ljava/lang/String;

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
