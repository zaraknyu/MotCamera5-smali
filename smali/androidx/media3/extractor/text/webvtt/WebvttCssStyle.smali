.class public final Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public backgroundColor:I

.field public bold:I

.field public combineUpright:Z

.field public fontColor:I

.field public fontFamily:Ljava/lang/String;

.field public fontSize:F

.field public fontSizeUnit:I

.field public hasBackgroundColor:Z

.field public hasFontColor:Z

.field public italic:I

.field public linethrough:I

.field public rubyPosition:I

.field public targetClasses:Ljava/util/Set;

.field public targetId:Ljava/lang/String;

.field public targetTag:Ljava/lang/String;

.field public targetVoice:Ljava/lang/String;

.field public underline:I


# direct methods
.method public static updateScoreForMatch(Ljava/lang/String;IILjava/lang/String;)I
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    add-int/2addr p1, p2

    return p1

    :cond_1
    return v0

    :cond_2
    :goto_0
    return p1
.end method
