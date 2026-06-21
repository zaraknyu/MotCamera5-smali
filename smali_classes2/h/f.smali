.class public final Lh/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adobe/scan/sdk/ScanAppConnection$Option;


# instance fields
.field public final a:Lcom/adobe/scan/sdk/ScanAppConnection$ImageReturnOptions;


# direct methods
.method public constructor <init>(Lcom/adobe/scan/sdk/ScanAppConnection$ImageReturnOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/f;->a:Lcom/adobe/scan/sdk/ScanAppConnection$ImageReturnOptions;

    return-void
.end method


# virtual methods
.method public final addToIntent(Landroid/content/Intent;)V
    .locals 4

    sget-object v0, Lh/e;->a:[I

    iget-object p0, p0, Lh/f;->a:Lcom/adobe/scan/sdk/ScanAppConnection$ImageReturnOptions;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const-string v0, "requestProcessedImages"

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v2, 0x2

    const-string v3, "requestedImageType"

    if-eq p0, v2, :cond_1

    const/4 v2, 0x3

    if-ne p0, v2, :cond_0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "Pages"

    invoke-virtual {p1, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void

    :cond_0
    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "IndividualImages"

    invoke-virtual {p1, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void

    :cond_2
    const/4 p0, 0x0

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lh/f;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lh/f;

    iget-object p0, p0, Lh/f;->a:Lcom/adobe/scan/sdk/ScanAppConnection$ImageReturnOptions;

    iget-object p1, p1, Lh/f;->a:Lcom/adobe/scan/sdk/ScanAppConnection$ImageReturnOptions;

    if-eq p0, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lh/f;->a:Lcom/adobe/scan/sdk/ScanAppConnection$ImageReturnOptions;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImageReturn(type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lh/f;->a:Lcom/adobe/scan/sdk/ScanAppConnection$ImageReturnOptions;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
