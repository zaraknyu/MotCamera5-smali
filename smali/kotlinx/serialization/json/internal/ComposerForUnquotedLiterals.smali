.class public final Lkotlinx/serialization/json/internal/ComposerForUnquotedLiterals;
.super Lcom/motorola/camera/ui/DownUpDetector;
.source "SourceFile"


# instance fields
.field public final forceQuoting:Z


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/mkv/Sniffer;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/DownUpDetector;-><init>(Landroidx/media3/extractor/mkv/Sniffer;)V

    iput-boolean p2, p0, Lkotlinx/serialization/json/internal/ComposerForUnquotedLiterals;->forceQuoting:Z

    return-void
.end method


# virtual methods
.method public final printQuoted(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/ComposerForUnquotedLiterals;->forceQuoting:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/DownUpDetector;->printQuoted(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/DownUpDetector;->print(Ljava/lang/String;)V

    return-void
.end method
