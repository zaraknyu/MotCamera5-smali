.class public final Landroidx/compose/ui/text/PlatformParagraphStyle;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final includeFontPadding:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p2, p0, Landroidx/compose/ui/text/PlatformParagraphStyle;->includeFontPadding:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Landroidx/compose/ui/text/PlatformParagraphStyle;->includeFontPadding:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/text/PlatformParagraphStyle;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroidx/compose/ui/text/PlatformParagraphStyle;

    iget-boolean p1, p1, Landroidx/compose/ui/text/PlatformParagraphStyle;->includeFontPadding:Z

    iget-boolean p0, p0, Landroidx/compose/ui/text/PlatformParagraphStyle;->includeFontPadding:Z

    if-eq p0, p1, :cond_2

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-boolean p0, p0, Landroidx/compose/ui/text/PlatformParagraphStyle;->includeFontPadding:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    mul-int/lit8 p0, p0, 0x1f

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PlatformParagraphStyle(includeFontPadding="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Landroidx/compose/ui/text/PlatformParagraphStyle;->includeFontPadding:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", emojiSupportMatch=EmojiSupportMatch.Default)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
