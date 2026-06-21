.class public final Lcom/google/zxing/client/result/TelParsedResult;
.super Landroidx/media3/decoder/Buffer;
.source "SourceFile"


# instance fields
.field public final number:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x7

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Landroidx/media3/decoder/Buffer;-><init>(II)V

    iput-object p1, p0, Lcom/google/zxing/client/result/TelParsedResult;->number:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getDisplayResult()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object p0, p0, Lcom/google/zxing/client/result/TelParsedResult;->number:Ljava/lang/String;

    invoke-static {p0, v0}, Landroidx/media3/decoder/Buffer;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
