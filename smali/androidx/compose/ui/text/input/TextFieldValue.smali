.class public final Landroidx/compose/ui/text/input/TextFieldValue;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final annotatedString:Landroidx/compose/ui/text/AnnotatedString;

.field public final composition:Landroidx/compose/ui/text/TextRange;

.field public final selection:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/runtime/saveable/SaverKt;->AutoSaver:Landroidx/sqlite/db/SimpleSQLiteQuery;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/text/AnnotatedString;J)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    iget-object p1, p1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sget v0, Landroidx/compose/ui/text/TextRange;->$r8$clinit:I

    const/16 v0, 0x20

    shr-long v0, p2, v0

    long-to-int v0, v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-le v2, p1, :cond_1

    move v2, p1

    :cond_1
    const-wide v3, 0xffffffffL

    and-long/2addr v3, p2

    long-to-int v3, v3

    if-gez v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    if-le v1, p1, :cond_3

    goto :goto_2

    :cond_3
    move p1, v1

    :goto_2
    if-ne v2, v0, :cond_4

    if-eq p1, v3, :cond_5

    :cond_4
    invoke-static {v2, p1}, Lkotlin/text/UStringsKt;->TextRange(II)J

    move-result-wide p2

    :cond_5
    iput-wide p2, p0, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/compose/ui/text/input/TextFieldValue;->composition:Landroidx/compose/ui/text/TextRange;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/text/input/TextFieldValue;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/ui/text/input/TextFieldValue;

    iget-wide v3, p1, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    sget v1, Landroidx/compose/ui/text/TextRange;->$r8$clinit:I

    iget-wide v5, p0, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    cmp-long v1, v5, v3

    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/compose/ui/text/input/TextFieldValue;->composition:Landroidx/compose/ui/text/TextRange;

    iget-object v3, p1, Landroidx/compose/ui/text/input/TextFieldValue;->composition:Landroidx/compose/ui/text/TextRange;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    iget-object p1, p1, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    invoke-virtual {v0}, Landroidx/compose/ui/text/AnnotatedString;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    sget v2, Landroidx/compose/ui/text/TextRange;->$r8$clinit:I

    iget-wide v2, p0, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    iget-object p0, p0, Landroidx/compose/ui/text/input/TextFieldValue;->composition:Landroidx/compose/ui/text/TextRange;

    if-eqz p0, :cond_0

    iget-wide v1, p0, Landroidx/compose/ui/text/TextRange;->packedValue:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TextFieldValue(text=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\', selection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", composition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/compose/ui/text/input/TextFieldValue;->composition:Landroidx/compose/ui/text/TextRange;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
