.class public final Lcom/google/zxing/client/result/SMSParsedResult;
.super Landroidx/media3/decoder/Buffer;
.source "SourceFile"


# instance fields
.field public final body:Ljava/lang/String;

.field public final numbers:[Ljava/lang/String;

.field public final subject:Ljava/lang/String;

.field public final vias:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x5

    .line 1
    invoke-direct {p0, v0, v1}, Landroidx/media3/decoder/Buffer;-><init>(II)V

    .line 2
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/zxing/client/result/SMSParsedResult;->numbers:[Ljava/lang/String;

    const/4 p1, 0x0

    .line 3
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/client/result/SMSParsedResult;->vias:[Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lcom/google/zxing/client/result/SMSParsedResult;->subject:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/google/zxing/client/result/SMSParsedResult;->body:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x5

    .line 6
    invoke-direct {p0, v0, v1}, Landroidx/media3/decoder/Buffer;-><init>(II)V

    .line 7
    iput-object p1, p0, Lcom/google/zxing/client/result/SMSParsedResult;->numbers:[Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lcom/google/zxing/client/result/SMSParsedResult;->vias:[Ljava/lang/String;

    .line 9
    iput-object p3, p0, Lcom/google/zxing/client/result/SMSParsedResult;->subject:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lcom/google/zxing/client/result/SMSParsedResult;->body:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getDisplayResult()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lcom/google/zxing/client/result/SMSParsedResult;->numbers:[Ljava/lang/String;

    invoke-static {v1, v0}, Landroidx/media3/decoder/Buffer;->maybeAppend([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/google/zxing/client/result/SMSParsedResult;->subject:Ljava/lang/String;

    invoke-static {v1, v0}, Landroidx/media3/decoder/Buffer;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object p0, p0, Lcom/google/zxing/client/result/SMSParsedResult;->body:Ljava/lang/String;

    invoke-static {p0, v0}, Landroidx/media3/decoder/Buffer;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
