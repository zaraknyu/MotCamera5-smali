.class public final Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;
.super Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;
.source "SourceFile"


# instance fields
.field public final responseCode:I


# direct methods
.method public constructor <init>(ILandroidx/media3/datasource/DataSourceException;Ljava/util/Map;)V
    .locals 1

    const-string p3, "Response code: "

    invoke-static {p1, p3}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/16 v0, 0x7d4

    invoke-direct {p0, p3, p2, v0}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Ljava/io/IOException;I)V

    iput p1, p0, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    return-void
.end method
