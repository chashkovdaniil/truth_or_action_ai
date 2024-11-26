# truth_or_action_ai

### Дисклеймер
Проект создан исключительно в развлекательных целях. Он не несет за собой примера для подражания по написанию кода.
Но тем не менее приложение может служить примером Flutter Web + Yandex GPT.
Полный код облачной функции для обращения к Yandex GPT находится ниже.

```kotlin
import java.net.URI
import java.net.http.HttpClient
import java.net.http.HttpRequest
import java.net.http.HttpResponse
import java.net.URLDecoder
import java.nio.charset.StandardCharsets
import kotlin.io.encoding.Base64
import kotlin.io.encoding.ExperimentalEncodingApi


data class Request(
    val httpMethod: String?,
    val headers: Map<String, String> = mapOf(),
    val body: String = ""
)

data class Response(
    val statusCode: Int,
    val body: String
)

@ExperimentalEncodingApi
fun handle(request: Request): Response {
    /// GPT_API_TOKEN - это переменная окружения, по сути это Api токен авторизации
    println("Request: $request");
    val gptApiToken: String = System.getenv("GPT_API_TOKEN");
    println("Token $gptApiToken");
    val client = HttpClient.newBuilder().build();
    val decodedRequestBody = Base64.Default.decode(request.body).toString(Charsets.UTF_8)
    println("RequestBody $decodedRequestBody");

    val request = HttpRequest.newBuilder()
        .uri(URI.create("https://llm.api.cloud.yandex.net/foundationModels/v1/completion"))
        .setHeader("Authorization", "Api-Key $gptApiToken")
        .setHeader("Content-Type", "application/json")
        .POST(HttpRequest.BodyPublishers.ofString(decodedRequestBody))
        .build();
    val response = client.send(request, HttpResponse.BodyHandlers.ofString());
    val rBody = response.body();
    val statusCode = response.statusCode();
    return Response(statusCode, rBody)
}
```
### Описание
Это простое веб-приложение, которое находится по адресу: https://truth-or-action-ai.website.yandexcloud.net/

Суть его в том, чтобы генерировать вопросы для игры правда или действие, но без действий. Так уж получилось, что во время игры все выбирали правду. Поэтому дабы упростить задачу, и попробовать использовать AI, было создано данное приложение.

У Yandex GPT есть ограничения на 18+, но тем не менее она может выдавать вопросы на эту тему. Но чаще отсылает к поиску.