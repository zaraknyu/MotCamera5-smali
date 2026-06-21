.class public Lcom/adobe/magic_clean/CameraCleanUtils$CMLAnalyticsInput;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/magic_clean/CameraCleanUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CMLAnalyticsInput"
.end annotation


# instance fields
.field public mCalculateMLAnalyticsforBD:Z

.field public mMaxSizeOfEachBuffer:I

.field public mNumberOfBuffersForBDAnalytics:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$CMLAnalyticsInput;->mCalculateMLAnalyticsforBD:Z

    const/16 v0, 0xe1

    iput v0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$CMLAnalyticsInput;->mMaxSizeOfEachBuffer:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$CMLAnalyticsInput;->mNumberOfBuffersForBDAnalytics:I

    return-void
.end method
