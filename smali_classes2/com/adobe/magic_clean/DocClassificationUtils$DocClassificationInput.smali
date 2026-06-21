.class public Lcom/adobe/magic_clean/DocClassificationUtils$DocClassificationInput;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/magic_clean/DocClassificationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DocClassificationInput"
.end annotation


# instance fields
.field public mEnableBetaFeatures:Ljava/lang/Boolean;

.field public mInputBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassificationInput;->mInputBitmap:Landroid/graphics/Bitmap;

    .line 3
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassificationInput;->mEnableBetaFeatures:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Ljava/lang/Boolean;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassificationInput;->mInputBitmap:Landroid/graphics/Bitmap;

    .line 6
    iput-object p2, p0, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassificationInput;->mEnableBetaFeatures:Ljava/lang/Boolean;

    return-void
.end method
