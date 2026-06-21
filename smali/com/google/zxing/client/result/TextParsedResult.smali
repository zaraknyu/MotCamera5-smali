.class public final Lcom/google/zxing/client/result/TextParsedResult;
.super Landroidx/media3/decoder/Buffer;
.source "SourceFile"


# instance fields
.field public final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Landroidx/media3/decoder/Buffer;-><init>(II)V

    iput-object p1, p0, Lcom/google/zxing/client/result/TextParsedResult;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getDisplayResult()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/client/result/TextParsedResult;->text:Ljava/lang/String;

    return-object p0
.end method
