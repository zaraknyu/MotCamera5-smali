.class public Lcom/adobe/magic_clean/DocClassificationUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/magic_clean/DocClassificationUtils$DocClassificationOutput;,
        Lcom/adobe/magic_clean/DocClassificationUtils$DocClassificationInput;,
        Lcom/adobe/magic_clean/DocClassificationUtils$DocClassificationErrCode;,
        Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;
    }
.end annotation


# static fields
.field public static kHalfDownsampleImageDimensionsForDocClassificationNN:I = 0x540

.field public static kImageDimensionsForDocClassificationNN:I = 0xe0

.field public static kMinInputImageSizeForDocClassificationNN:I = 0xc400

.field public static kNumberOfClasses:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
