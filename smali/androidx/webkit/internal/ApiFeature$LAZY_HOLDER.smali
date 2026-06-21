.class public abstract Landroidx/webkit/internal/ApiFeature$LAZY_HOLDER;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final WEBVIEW_APK_FEATURES:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Landroidx/webkit/internal/WebViewGlueCommunicator$LAZY_FACTORY_HOLDER;->INSTANCE:Landroidx/webkit/internal/WebViewProviderFactory;

    invoke-interface {v1}, Landroidx/webkit/internal/WebViewProviderFactory;->getWebViewFeatures()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroidx/webkit/internal/ApiFeature$LAZY_HOLDER;->WEBVIEW_APK_FEATURES:Ljava/util/HashSet;

    return-void
.end method
