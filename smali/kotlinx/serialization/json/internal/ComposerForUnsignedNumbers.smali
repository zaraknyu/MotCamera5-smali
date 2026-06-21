.class public final Lkotlinx/serialization/json/internal/ComposerForUnsignedNumbers;
.super Lcom/motorola/camera/ui/DownUpDetector;
.source "SourceFile"


# instance fields
.field public final forceQuoting:Z


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/mkv/Sniffer;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/DownUpDetector;-><init>(Landroidx/media3/extractor/mkv/Sniffer;)V

    iput-boolean p2, p0, Lkotlinx/serialization/json/internal/ComposerForUnsignedNumbers;->forceQuoting:Z

    return-void
.end method


# virtual methods
.method public final print(B)V
    .locals 1

    .line 3
    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/ComposerForUnsignedNumbers;->forceQuoting:Z

    if-eqz v0, :cond_0

    and-int/lit16 p1, p1, 0xff

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/DownUpDetector;->printQuoted(Ljava/lang/String;)V

    return-void

    :cond_0
    and-int/lit16 p1, p1, 0xff

    .line 6
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/DownUpDetector;->print(Ljava/lang/String;)V

    return-void
.end method

.method public final print(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/ComposerForUnsignedNumbers;->forceQuoting:Z

    invoke-static {p1}, Ljava/lang/Integer;->toUnsignedString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/DownUpDetector;->printQuoted(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/DownUpDetector;->print(Ljava/lang/String;)V

    return-void
.end method

.method public final print(J)V
    .locals 1

    .line 2
    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/ComposerForUnsignedNumbers;->forceQuoting:Z

    invoke-static {p1, p2}, Ljava/lang/Long;->toUnsignedString(J)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/DownUpDetector;->printQuoted(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/DownUpDetector;->print(Ljava/lang/String;)V

    return-void
.end method

.method public final print(S)V
    .locals 2

    .line 8
    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/ComposerForUnsignedNumbers;->forceQuoting:Z

    const v1, 0xffff

    if-eqz v0, :cond_0

    and-int/2addr p1, v1

    .line 9
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/DownUpDetector;->printQuoted(Ljava/lang/String;)V

    return-void

    :cond_0
    and-int/2addr p1, v1

    .line 11
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/DownUpDetector;->print(Ljava/lang/String;)V

    return-void
.end method
