.class public final Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public endTimeIndex:I

.field public length:I

.field public startTimeIndex:I

.field public styleIndex:I

.field public textIndex:I


# direct methods
.method public static fromFormatLine(Ljava/lang/String;)Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;
    .locals 9

    const-string v0, "Format:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Landroidx/media3/common/util/Log;->checkArgument(Z)V

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    invoke-static {p0, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v3, v0

    move v4, v3

    move v5, v4

    move v6, v5

    move v2, v1

    :goto_0
    array-length v7, p0

    if-ge v2, v7, :cond_4

    aget-object v7, p0, v2

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :goto_1
    move v7, v0

    goto :goto_2

    :sswitch_0
    const-string/jumbo v8, "style"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    const/4 v7, 0x3

    goto :goto_2

    :sswitch_1
    const-string/jumbo v8, "start"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    const/4 v7, 0x2

    goto :goto_2

    :sswitch_2
    const-string/jumbo v8, "text"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    const/4 v7, 0x1

    goto :goto_2

    :sswitch_3
    const-string v8, "end"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    move v7, v1

    :goto_2
    packed-switch v7, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    move v6, v2

    goto :goto_3

    :pswitch_1
    move v3, v2

    goto :goto_3

    :pswitch_2
    move v5, v2

    goto :goto_3

    :pswitch_3
    move v4, v2

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-eq v3, v0, :cond_5

    if-eq v4, v0, :cond_5

    if-eq v5, v0, :cond_5

    new-instance v0, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;

    array-length p0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput v3, v0, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;->startTimeIndex:I

    iput v4, v0, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;->endTimeIndex:I

    iput v6, v0, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;->styleIndex:I

    iput v5, v0, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;->textIndex:I

    iput p0, v0, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;->length:I

    return-object v0

    :cond_5
    const/4 p0, 0x0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x188db -> :sswitch_3
        0x36452d -> :sswitch_2
        0x68ac462 -> :sswitch_1
        0x68b1db1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public boundsMatch()Z
    .locals 6

    iget v0, p0, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;->startTimeIndex:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    iget v1, p0, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;->textIndex:I

    iget v5, p0, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;->endTimeIndex:I

    if-le v1, v5, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    if-ne v1, v5, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    and-int/2addr v1, v0

    if-nez v1, :cond_2

    goto :goto_4

    :cond_2
    and-int/lit8 v1, v0, 0x70

    if-eqz v1, :cond_5

    iget v1, p0, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;->textIndex:I

    iget v5, p0, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;->styleIndex:I

    if-le v1, v5, :cond_3

    move v1, v4

    goto :goto_1

    :cond_3
    if-ne v1, v5, :cond_4

    move v1, v2

    goto :goto_1

    :cond_4
    move v1, v3

    :goto_1
    shl-int/2addr v1, v3

    and-int/2addr v1, v0

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    and-int/lit16 v1, v0, 0x700

    if-eqz v1, :cond_8

    iget v1, p0, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;->length:I

    iget v5, p0, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;->endTimeIndex:I

    if-le v1, v5, :cond_6

    move v1, v4

    goto :goto_2

    :cond_6
    if-ne v1, v5, :cond_7

    move v1, v2

    goto :goto_2

    :cond_7
    move v1, v3

    :goto_2
    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v0

    if-nez v1, :cond_8

    goto :goto_4

    :cond_8
    and-int/lit16 v1, v0, 0x7000

    if-eqz v1, :cond_b

    iget v1, p0, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;->length:I

    iget p0, p0, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;->styleIndex:I

    if-le v1, p0, :cond_9

    move v2, v4

    goto :goto_3

    :cond_9
    if-ne v1, p0, :cond_a

    goto :goto_3

    :cond_a
    move v2, v3

    :goto_3
    shl-int/lit8 p0, v2, 0xc

    and-int/2addr p0, v0

    if-nez p0, :cond_b

    :goto_4
    const/4 p0, 0x0

    return p0

    :cond_b
    return v4
.end method
